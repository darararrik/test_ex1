import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/s.dart';
import 'package:test_ex1/core/presentation/providers/auth/auth_provider.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/util.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final TextEditingController _usernameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    return Scaffold(
      body: BackGroundWidget(
        child: Padding(
          padding: const P(horizontal: S.s24, top: S.s36, bottom: S.s44),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.l10n.registration,
                    style: context.appTextStyle.title1,
                  ),
                  const SizedBox(height: S.s28),
                  ...[
                    InputWidget(
                      controller: _usernameController,
                      hintText: context.l10n.enterFirstName,
                      textInputAction: TextInputAction.next,
                      labelText: context.l10n.firstNameLabel,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return context.l10n.errorEnterName;
                        }
                        return null;
                      },
                    ),
                    InputWidget(
                      controller: _emailController,
                      hintText: context.l10n.enterEmail,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      labelText: context.l10n.emailLabel,
                      validator: (value) => validatorEmail(value, context),
                    ),
                    InputWidget(
                      controller: _passwordController,
                      hintText: context.l10n.enterPassword,
                      usePasswordToggle: true,
                      textInputAction: TextInputAction.next,
                      labelText: context.l10n.passwordLabel,
                      validator: (value) =>
                          shortPasswordValidator(value, context),
                    ),
                    InputWidget(
                      controller: _confirmPasswordController,
                      hintText: context.l10n.confirmPassword,
                      usePasswordToggle: true,
                      textInputAction: TextInputAction.done,
                      labelText: context.l10n.confirmPasswordLabel,
                      validator: (value) => matchPasswordcValidator(
                        value,
                        context,
                        _passwordController,
                      ),
                    ),
                  ].separated(const SizedBox(height: S.s28)),
                  const SizedBox(height: S.s42),
                  PrimaryButton(
                    onPressed: () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        final notifier = AuthProvider.of(context);
                        final resp = await notifier.register(
                          _usernameController.text.trim(),
                          _emailController.text.trim(),
                          _passwordController.text.trim(),
                        );
                        if (resp == true) {
                          router.replace(const NavBarRoute());
                        }
                      }
                    },
                    text: context.l10n.registration,
                    isEnabled: true,
                  ),
                  const SizedBox(height: S.s12),
                  UnderButtonText(
                    text: context.l10n.alreadyHaveAccount,
                    buttonText: context.l10n.login,
                    onPressed: () => context.replaceRoute(const LoginRoute()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
