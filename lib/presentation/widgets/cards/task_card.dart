import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/my_prayers/my_prayers_bloc.dart';

class PrayerCard extends StatefulWidget {
  const PrayerCard({
    super.key,
    required this.prayer,
    required this.onTapRoute,
    required this.onPressed,
  });
  final PrayerModel prayer;

  final Function(PrayerModel prayer) onPressed;
  final Function(PrayerModel prayer) onTapRoute;
  @override
  State<PrayerCard> createState() => _PrayerCardState();
}

class _PrayerCardState extends State<PrayerCard> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  final isEditing = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.prayer.title);
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && isEditing.value) {
        _finishEditing();
      }
    });
  }

  @override
  void didUpdateWidget(covariant PrayerCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.prayer.title != widget.prayer.title && !isEditing.value) {
      _controller.text = widget.prayer.title;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void onDismissed(DismissDirection direction) =>
      context.read<MyPrayersBloc>().add(
        MyPrayersEvent.deletePray(
          prayerId: widget.prayer.id,
          columnId: widget.prayer.columnId,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isEditing,
      builder: (context, value, child) {
        return Stack(
          children: [
            const BackgroundCardDelete(),
            Dismissible(
              key: ValueKey(widget.prayer.id),
              onDismissed: context.isMyDesksWrapperRoute ? onDismissed : null,
              direction: context.isMyDesksWrapperRoute
                  ? DismissDirection.endToStart
                  : DismissDirection.none,
              child: GestureDetector(
                onTap: () => widget.onTapRoute(widget.prayer),
                onLongPress: _onLongPress,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(R.r24),
                    color: context.appColors.gray100,
                    boxShadow: [context.appColors.shadow1],
                  ),
                  child: Padding(
                    padding: const P(horizontal: S.s24, vertical: S.s24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CapsuleIcon(prayer: widget.prayer),
                            const SizedBox(width: S.s12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Visibility(
                                  visible: context.isMyDesksWrapperRoute,
                                  replacement: Text(
                                    widget.prayer.title,
                                    style: context.appTextStyle.headline2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  child: Visibility(
                                    visible: isEditing.value,
                                    replacement: Text(
                                      widget.prayer.title,
                                      style: context.appTextStyle.headline2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    child: SizedBox(
                                      width: Sz.s200,
                                      child: TextField(
                                        focusNode: _focusNode,
                                        controller: _controller,
                                        style: context.appTextStyle.headline2,
                                        decoration: null,
                                        onSubmitted: (_) => _finishEditing(),
                                        autofocus: true,
                                        cursorColor: context.appColors.error,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: S.s2),
                                Row(
                                  children: [
                                    _Text(
                                      text: context.l10n.members,
                                      count: widget.prayer.otherPrayCount,
                                    ),
                                    const SizedBox(width: S.s12),
                                    _Text(
                                      text: context.l10n.complete,
                                      count: widget.prayer.completesCount,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        MyIconButton(
                          onPressed: () => widget.onPressed(widget.prayer),
                          iconPath: AppIcons.prayArms,
                          backgroundColor: context.appColors.gray300,
                          width: Sz.s46,
                          height: Sz.s46,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _onLongPress() {
    isEditing.value = true;
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        _focusNode.requestFocus();
        _controller.selection = TextSelection(
          baseOffset: 0,
          extentOffset: _controller.text.length,
        );
      }
    });
  }

  void _finishEditing() {
    isEditing.value = false;
    final newName = _controller.text.trim();
    if (newName.isNotEmpty && newName != widget.prayer.title) {
      context.read<MyPrayersBloc>().add(
        MyPrayersEvent.renamePrayer(
          newTitle: newName,
          taskId: widget.prayer.id,
          deskId: widget.prayer.columnId,
        ),
      );
    } else {
      _controller.text = widget.prayer.title;
    }
  }
}

class _Text extends StatelessWidget {
  const _Text({required this.count, required this.text});
  final String count;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: context.appTextStyle.body4.copyWith(
            color: context.appColors.gray700,
          ),
        ),
        const SizedBox(width: S.s4),
        Text(count, style: context.appTextStyle.body3),
      ],
    );
  }
}
