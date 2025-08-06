import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/widgets/back_ground.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/primary_button.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/under_button_text.dart';
import 'package:test_ex1/core/presentation/widgets/input_widget.dart';
import 'package:test_ex1/core/util/build_context_x.dart';
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
    return Scaffold(
      body: BackGroundWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.s24,
          ).copyWith(top: AppSpacing.s36, bottom: AppSpacing.s44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.login,
                style: context.appTextStyle.title1,
              ),
              SizedBox(height: AppSpacing.s28),
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
                  SizedBox(height: AppSpacing.s28),
                  InputWidget(
                    controller: _passwordController,
                    hintText: context.l10n.enterPassword,
                    usePasswordToggle: true,
                    textInputAction: TextInputAction.done,
                    labelText: context.l10n.passwordLabel,
                  ),
                  SizedBox(height: AppSpacing.s42),
                  PrimaryButton(
                    isEnabled: true,
                    onPressed: () {
                      // TODO: Изменить на логику входа
                      context.replaceRoute(
                        const MyDeskWrapperRoute(),
                      );
                    },
                    text: context.l10n.login,
                  ),
                  SizedBox(height: AppSpacing.s12),
                  UnderButtonText(
                    text: context.l10n.dontHaveAccount,
                    buttonText: context.l10n.signUp,
                    onPressed: () => context.replaceRoute(
                      const RegistrationRoute(),
                    ),
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
