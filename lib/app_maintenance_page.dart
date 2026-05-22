import 'package:flutter/material.dart';

import 'api/auth_service.dart';
import 'login_page.dart';
import 'staff_home_page.dart';

/// English maintenance copy (shown regardless of app locale).
const String kAppMaintenanceMessage =
    'The app is temporarily unavailable while scheduled maintenance is in progress. Please try again later.';

const _kMaintenanceStillInactiveMessage =
    'The app is still unavailable. Please try again later.';
const _kMaintenanceCheckFailedMessage =
    'Could not check app status. Check your connection and try again.';

const _kBgDark = Color(0xFF000000);
const _kCardBg = Color(0x14FFFFFF);
const _kBorderLight = Color(0x1FFFFFFF);
const _kTextPrimary = Color(0xFFFFFFFF);
const _kTextSecondary = Color(0x80FFFFFF);
const _kPrimary = Color(0xFFec5b13);

/// Full-screen maintenance gate styled like the staff login page.
class StaffAppMaintenancePage extends StatefulWidget {
  const StaffAppMaintenancePage({super.key, required this.auth});

  final AuthService auth;

  @override
  State<StaffAppMaintenancePage> createState() =>
      _StaffAppMaintenancePageState();
}

class _StaffAppMaintenancePageState extends State<StaffAppMaintenancePage> {
  bool _refreshing = false;

  bool _isWorkerRole(Map<String, dynamic> user) {
    final role = (user['role'] ?? '').toString().trim().toLowerCase();
    return role == 'worker';
  }

  Future<void> _resumeApp() async {
    try {
      final user = await widget.auth.restoreSessionIfPossible();
      if (!mounted) return;
      if (user != null && _isWorkerRole(user)) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute<void>(
            builder: (_) => StaffHomePage(auth: widget.auth, user: user),
          ),
          (_) => false,
        );
        return;
      }
      if (user != null) {
        await widget.auth.clearToken();
      }
      if (!mounted) return;
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute<void>(
          builder: (_) => LoginPage(auth: widget.auth),
        ),
        (_) => false,
      );
    } catch (_) {
      if (!mounted) return;
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute<void>(
          builder: (_) => LoginPage(auth: widget.auth),
        ),
        (_) => false,
      );
    }
  }

  Future<void> _onRefresh() async {
    if (_refreshing) return;
    setState(() => _refreshing = true);
    try {
      final active = await widget.auth.checkAppActive();
      if (!mounted) return;
      if (active) {
        await _resumeApp();
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(_kMaintenanceStillInactiveMessage)),
      );
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(_kMaintenanceCheckFailedMessage)),
      );
    } finally {
      if (mounted) {
        setState(() => _refreshing = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: _kBgDark,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= 600;

            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 520),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              flex: isWide ? 3 : 2,
                              child: Center(
                                child: SizedBox(
                                  width: 234,
                                  height: 234,
                                  child: Image.asset(
                                    'assets/logo.png',
                                    fit: BoxFit.contain,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: isWide ? 3 : 2,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  padding: const EdgeInsets.all(18),
                                  decoration: BoxDecoration(
                                    color: _kCardBg,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(color: _kBorderLight),
                                  ),
                                  child: Text(
                                    kAppMaintenanceMessage,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      color: _kTextPrimary,
                                      height: 1.45,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: _kCardBg,
                            foregroundColor: _kPrimary,
                            disabledBackgroundColor: _kCardBg,
                            disabledForegroundColor: _kTextSecondary,
                            side: const BorderSide(color: _kBorderLight),
                          ),
                          onPressed: _refreshing ? null : _onRefresh,
                          child: _refreshing
                              ? const SizedBox(
                                  width: 22,
                                  height: 22,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: _kTextPrimary,
                                  ),
                                )
                              : const Text(
                                  'Refresh',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// Navigates to [StaffAppMaintenancePage] and clears the stack.
void openStaffAppMaintenanceScreen(
  BuildContext context, {
  required AuthService auth,
}) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute<void>(
      builder: (_) => StaffAppMaintenancePage(auth: auth),
    ),
    (_) => false,
  );
}
