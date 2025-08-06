import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/presentation/widgets/background.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/primary_button.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/under_button_text.dart';
import 'package:test_ex1/core/presentation/widgets/input_widget.dart';
import 'package:test_ex1/core/util/build_context_x.dart';
import 'package:test_ex1/core/util/list_x.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() =>
      _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final TextEditingController _usernameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

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
    return Scaffold(
      body: BackGroundWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.s24,
          ).copyWith(top: AppSpacing.s36, bottom: AppSpacing.s44),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.l10n.registration,
                  style: context.appTextStyle.title1,
                ),
                SizedBox(height: AppSpacing.s28),
                ...[
                  InputWidget(
                    controller: _usernameController,
                    hintText: context.l10n.enterFirstName,
                    textInputAction: TextInputAction.next,
                    labelText: context.l10n.firstNameLabel,
                  ),
                  InputWidget(
                    controller: _emailController,
                    hintText: context.l10n.enterEmail,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    labelText: context.l10n.emailLabel,
                  ),
                  InputWidget(
                    controller: _passwordController,
                    hintText: context.l10n.enterPassword,
                    usePasswordToggle: true,
                    textInputAction: TextInputAction.next,
                    labelText: context.l10n.passwordLabel,
                  ),
                  InputWidget(
                    controller: _confirmPasswordController,
                    hintText: context.l10n.confirmPassword,
                    usePasswordToggle: true,
                    textInputAction: TextInputAction.done,
                    labelText: context.l10n.confirmPasswordLabel,
                  ),
                ].separated(SizedBox(height: AppSpacing.s28)),
                SizedBox(height: AppSpacing.s42),
                PrimaryButton(
                  onPressed: () {
                    // TODO: Изменить на логику регистрации
                    context.replaceRoute(const MyDeskWrapperRoute());
                  },
                  text: context.l10n.registration,
                  isEnabled: true,
                ),
                SizedBox(height: AppSpacing.s12),
                UnderButtonText(
                  text: context.l10n.alreadyHaveAccount,
                  buttonText: context.l10n.login,
                  onPressed: () =>
                      context.replaceRoute(const LoginRoute()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
