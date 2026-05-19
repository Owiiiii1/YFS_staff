import 'dart:async';

import 'package:flutter/material.dart';
import 'api/auth_service.dart';
import 'gen_l10n/app_localizations.dart';
import 'staff_home_page.dart';

const _kBgDark = Color(0xFF000000);
const _kCardBg = Color(0x14FFFFFF);
const _kBorderLight = Color(0x1FFFFFFF);
const _kTextPrimary = Color(0xFFFFFFFF);
const _kTextSecondary = Color(0x80FFFFFF);
const _kPrimary = Color(0xFFec5b13);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.auth});

  final AuthService auth;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isLoading = false;

  bool _isWorkerRole(Map<String, dynamic> user) {
    final role = (user['role'] ?? '').toString().trim().toLowerCase();
    return role == 'worker';
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _onSignIn() async {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    setState(() => _isLoading = true);

    try {
      final result = await widget.auth.login(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim().isEmpty
            ? null
            : _passwordController.text,
      );

      final token = result.token;
      final user = result.user;
      if (token == null || user == null) {
        throw Exception('Invalid login response');
      }
      if (!_isWorkerRole(user)) {
        throw Exception('Staff access is allowed only for worker accounts');
      }

      // сохраняем токен (пригодится позже)
      await widget.auth.saveToken(token);
      final next = StaffHomePage(auth: widget.auth, user: user);

      if (!mounted) return;
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => next));
    } catch (e) {
      if (!mounted) return;
      final l10n = AppLocalizations.of(context)!;
      final message = e is ApiEndpointNotFoundException
          ? l10n.apiEndpointNotFoundHint
          : l10n.signInFailed(e.toString());
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(message)));
    } finally {
      if (mounted) setState(() => _isLoading = false);
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
                        flex: isWide ? 3 : 2,
                        child: _LogoBlock(
                          titleStyle: theme.textTheme.headlineMedium,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: const EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: _kCardBg,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: _kBorderLight,
                              ),
                            ),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.signIn,
                                    style: theme.textTheme.headlineSmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: _kPrimary,
                                        ),
                                  ),
                                  const SizedBox(height: 16),

                                  TextFormField(
                                    controller: _emailController,
                                    style: const TextStyle(color: _kTextPrimary),
                                    keyboardType: TextInputType.emailAddress,
                                    autofillHints: const [
                                      AutofillHints.username,
                                      AutofillHints.email,
                                    ],
                                    decoration: InputDecoration(
                                      labelText: AppLocalizations.of(
                                        context,
                                      )!.email,
                                      labelStyle: const TextStyle(
                                        color: _kTextSecondary,
                                      ),
                                      floatingLabelStyle: const TextStyle(
                                        color: _kTextSecondary,
                                      ),
                                      filled: true,
                                      fillColor: _kCardBg,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: _kBorderLight,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: _kBorderLight,
                                        ),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                        borderSide: BorderSide(
                                          color: _kBorderLight,
                                        ),
                                      ),
                                    ),
                                    validator: (v) {
                                      final value = (v ?? '').trim();
                                      if (value.isEmpty) {
                                        return AppLocalizations.of(
                                          context,
                                        )!.emailRequired;
                                      }
                                      if (!value.contains('@')) {
                                        return AppLocalizations.of(
                                          context,
                                        )!.enterValidEmail;
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 12),

                                  TextFormField(
                                    controller: _passwordController,
                                    style: const TextStyle(color: _kTextPrimary),
                                    obscureText: !_isPasswordVisible,
                                    autofillHints: const [
                                      AutofillHints.password,
                                    ],
                                    decoration: InputDecoration(
                                      labelText: AppLocalizations.of(
                                        context,
                                      )!.password,
                                      labelStyle: const TextStyle(
                                        color: _kTextSecondary,
                                      ),
                                      floatingLabelStyle: const TextStyle(
                                        color: _kTextSecondary,
                                      ),
                                      filled: true,
                                      fillColor: _kCardBg,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: _kBorderLight,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: _kBorderLight,
                                        ),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12),
                                        ),
                                        borderSide: BorderSide(
                                          color: _kBorderLight,
                                        ),
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () => setState(
                                          () => _isPasswordVisible =
                                              !_isPasswordVisible,
                                        ),
                                        icon: Icon(
                                          _isPasswordVisible
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: _kPrimary,
                                        ),
                                        tooltip: _isPasswordVisible
                                            ? AppLocalizations.of(
                                                context,
                                              )!.hidePassword
                                            : AppLocalizations.of(
                                                context,
                                              )!.showPassword,
                                      ),
                                    ),
                                    validator: (v) {
                                      return null;
                                    },
                                    onFieldSubmitted: (_) => _onSignIn(),
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
                                        side: BorderSide(
                                          color: _kBorderLight,
                                        ),
                                      ),
                                      onPressed: _isLoading ? null : _onSignIn,
                                      child: _isLoading
                                          ? const SizedBox(
                                              width: 22,
                                              height: 22,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                                color: _kTextPrimary,
                                              ),
                                            )
                                          : Text(
                                              AppLocalizations.of(
                                                context,
                                              )!.signIn,
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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

class _LogoBlock extends StatelessWidget {
  const _LogoBlock({required this.titleStyle});
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 234,
        height: 234,
        child: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
