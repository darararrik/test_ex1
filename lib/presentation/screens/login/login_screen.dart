import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/auth/auth_bloc.dart';
import 'package:test_ex1/presentation/constants/s.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

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
    return Scaffold(
      body: BackGroundWidget(
        child: Padding(
          padding: const P(horizontal: S.s24, top: S.s36, bottom: S.s44),
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
                    isPassword: true,
                    textInputAction: TextInputAction.done,
                    labelText: context.l10n.passwordLabel,
                  ),
                  const SizedBox(height: S.s42),
                  PrimaryButton(
                    isEnabled: true,
                    onPressed: () => context.read<AuthBloc>().add(
                      AuthEvent.login(
                        _emailController.text.trim(),
                        _passwordController.text.trim(),
                      ),
                    ),
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
