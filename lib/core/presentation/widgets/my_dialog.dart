// Flutter imports:

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/util.dart';

class MyDialog extends StatefulWidget {
  const MyDialog({
    super.key,
    required this.title,
    required this.onSubmit,
    required this.hintText,
  });
  final String title;
  final ValueChanged<String> onSubmit;
  final String hintText;
  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  final isButtonEnabled = ValueNotifier<bool>(false);
  late final TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _nameController.addListener(() {
      final text = _nameController.text.trim();
      isButtonEnabled.value = text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    isButtonEnabled.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(R.r28),
      ),
      child: Padding(
        padding: const P(horizontal: S.s24, bottom: S.s40, top: S.s32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title, style: context.appTextStyle.title2),
                MyIconButton(
                  backgroundColor: context.appColors.gray400,
                  onPressed: () => context.pop(),
                  iconPath: AppIcons.close,
                  width: Sz.s34,
                  height: Sz.s34,
                ),
              ],
            ),
            const SizedBox(height: S.s28),
            InputWidget(controller: _nameController, hintText: widget.hintText),
            const SizedBox(height: S.s20),
            ValueListenableBuilder<bool>(
              valueListenable: isButtonEnabled,
              builder: (context, enabled, _) {
                return PrimaryButton(
                  isEnabled: enabled,
                  onPressed: () {
                    widget.onSubmit(_nameController.text.trim());
                    context.pop();
                  },
                  text: context.l10n.add,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
