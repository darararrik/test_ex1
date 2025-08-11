import 'package:flutter/material.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/util.dart';

class InputCommentWidget extends StatefulWidget {
  const InputCommentWidget({
    super.key,
    required TextEditingController commentController,
  }) : _commentController = commentController;

  final TextEditingController _commentController;

  @override
  State<InputCommentWidget> createState() => _InputCommentWidgetState();
}

class _InputCommentWidgetState extends State<InputCommentWidget> {
  final FocusNode _focusNode = FocusNode();
  final ValueNotifier<bool> _hasFocus = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      _hasFocus.value = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _hasFocus,
      builder: (BuildContext context, bool value, Widget? child) {
        return TextField(
          focusNode: _focusNode,
          controller: widget._commentController,
          style: context.appTextStyle.body2,
          decoration: InputDecoration(
            hintStyle: context.appTextStyle.body2.copyWith(
              color: context.appColors.gray600,
            ),
            filled: true,
            fillColor: context.appColors.gray300,
            hintText: context.l10n.enterYourComment,
            border: _outlinedBorder(),
            enabledBorder: _outlinedBorder(),
            focusedBorder: _outlinedBorder(),
            contentPadding: const EdgeInsets.symmetric(
              vertical: S.s16,
              horizontal: S.s24,
            ),
            suffixIcon: Visibility(
              visible: _hasFocus.value,
              child: Padding(
                padding: const EdgeInsets.all(S.s4),
                child: MyIconButton(
                  onPressed: () {},
                  iconPath: AppIcons.paperAirplane,
                  width: Sz.s48,
                  height: Sz.s48,
                  iconHeight: Sz.s24,
                  iconWidth: Sz.s24,
                  backgroundColor: context.appColors.gray800,
                  iconColor: context.appColors.gray100,
                  borderRadius: BorderRadius.circular(R.r12),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  OutlineInputBorder _outlinedBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(R.r16),
    );
  }
}
