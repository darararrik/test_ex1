import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/s.dart';
import 'package:test_ex1/core/presentation/providers/auth/auth_provider.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    return Scaffold(
      body: BackGroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: S.s24,
          ).copyWith(top: S.s36, bottom: S.s44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(context.l10n.login, style: context.appTextStyle.title1),
              const SizedBox(height: S.s28),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputWidget(
                    controller: _emailController,
                    hintText: context.l10n.enterEmail,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    labelText: context.l10n.emailLabel,
                  ),
                  const SizedBox(height: S.s28),
                  InputWidget(
                    controller: _passwordController,
                    hintText: context.l10n.enterPassword,
                    usePasswordToggle: true,
                    textInputAction: TextInputAction.done,
                    labelText: context.l10n.passwordLabel,
                  ),
                  const SizedBox(height: S.s42),
                  PrimaryButton(
                    isEnabled: true,
                    onPressed: () async {
                      final notifier = AuthProvider.of(context);
                      final resp = await notifier.login(
                        _emailController.text.trim(),
                        _passwordController.text.trim(),
                      );
                      if (resp == true) {
                        router.replace(const NavBarRoute());
                      }
                    },
                    text: context.l10n.login,
                  ),
                  const SizedBox(height: S.s12),
                  UnderButtonText(
                    text: context.l10n.dontHaveAccount,
                    buttonText: context.l10n.signUp,
                    onPressed: () =>
                        context.replaceRoute(const RegistrationRoute()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
