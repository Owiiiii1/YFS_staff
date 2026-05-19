import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'api/auth_service.dart';
import 'gen_l10n/app_localizations.dart';
import 'login_page.dart';
import 'staff_home_page.dart';

/// Стартовый экран staff-приложения: проверка версии и переход в сессию/логин.
class IntroVideoPage extends StatefulWidget {
  const IntroVideoPage({super.key, required this.auth});

  final AuthService auth;

  @override
  State<IntroVideoPage> createState() => _IntroVideoPageState();
}

class _IntroVideoPageState extends State<IntroVideoPage> {
  bool _checkingVersion = true;
  bool _updateRequired = false;
  String? _storeUrl;
  bool _checkingSession = false;

  bool _isWorkerRole(Map<String, dynamic> user) {
    final role = (user['role'] ?? '').toString().trim().toLowerCase();
    return role == 'worker';
  }

  @override
  void initState() {
    super.initState();
    _checkVersionAndStart();
  }

  Future<void> _checkVersionAndStart() async {
    try {
      String? platform;
      if (Platform.isAndroid) {
        platform = 'android';
      } else if (Platform.isIOS) {
        platform = 'ios';
      }

      if (platform != null) {
        final info = await PackageInfo.fromPlatform();
        final result = await widget.auth.checkAppVersion(
          platform: platform,
          version: info.version,
        );

        if (!mounted) return;

        if (!result.allowed) {
          setState(() {
            _checkingVersion = false;
            _updateRequired = true;
            _storeUrl = result.storeUrl;
          });
          return;
        }
      }
    } catch (_) {}

    if (!mounted) return;
    setState(() => _checkingVersion = false);
    _goToLoginOrHome();
  }

  Future<void> _goToLoginOrHome() async {
    setState(() => _checkingSession = true);
    try {
      final user = await widget.auth.restoreSessionIfPossible();
      if (!mounted) return;
      if (user != null && _isWorkerRole(user)) {
        final next = StaffHomePage(auth: widget.auth, user: user);
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => next),
        );
      } else {
        if (user != null) {
          await widget.auth.clearToken();
        }
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => LoginPage(auth: widget.auth)),
        );
      }
    } catch (e, st) {
      if (kDebugMode) {
        debugPrint('restoreSessionIfPossible failed: $e\n$st');
      }
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage(auth: widget.auth)),
      );
    } finally {
      if (mounted) {
        setState(() => _checkingSession = false);
      }
    }
  }

  Future<void> _openStore() async {
    final url = _storeUrl;
    if (url == null || url.isEmpty) {
      return;
    }

    final uri = Uri.tryParse(url);
    if (uri == null) {
      return;
    }

    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    if (_checkingSession) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      );
    }

    if (_checkingVersion) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      );
    }

    if (_updateRequired) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.system_update, color: Colors.white70, size: 56),
                const SizedBox(height: 16),
                Text(
                  AppLocalizations.of(context)!.appUpdateRequiredMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: _storeUrl != null ? _openStore : null,
                  child: Text(AppLocalizations.of(context)!.appUpdateButton),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: const Center(
        child: CircularProgressIndicator(color: Colors.white),
      ),
    );
  }
}
