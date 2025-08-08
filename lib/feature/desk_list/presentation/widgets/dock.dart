import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_ex1/core/constants/app_rounding.dart';
import 'package:test_ex1/core/constants/app_spacing.dart';
import 'package:test_ex1/core/domain/models/desk/desk_model.dart';
import 'package:test_ex1/core/presentation/widgets/background_delete_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/desk_list_provider.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

class Dock extends StatefulWidget {
  const Dock({super.key, required this.desk});
  final DeskModel desk;

  @override
  State<Dock> createState() => _DockState();
}

class _DockState extends State<Dock> {
  late TextEditingController _controller;
  final _focusNode = FocusNode();
  final isEditing = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.desk.title);
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && isEditing.value) {
        _finishEditing();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _finishEditing() {
    isEditing.value = false;
    final newTitle = _controller.text.trim();
    if (newTitle.isNotEmpty && newTitle != widget.desk.title) {
      final notifier = DeskListProvider.of(context);
      notifier.updateDeskTitle(widget.desk.id, newTitle);
    } else {
      _controller.text = widget.desk.title; // сбросить изменения
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isEditing,
      builder: (context, value, child) {
        return Stack(
          children: [
            BackgroundDeleteIcon(),
            Dismissible(
              key: ValueKey(widget.desk.id),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                final notifier = DeskListProvider.of(context);
                notifier.deleteDeskbyId(widget.desk.id);
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.appColors.gray100,
                  borderRadius: BorderRadius.circular(AppRounding.r24),
                  boxShadow: [context.appColors.shadow1],
                ),
                child: Material(
                  color: context.appColors.gray100,
                  borderRadius: BorderRadius.circular(AppRounding.r24),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(AppRounding.r24),
                    onTap: () {
                      context.pushRoute(TasksRoute());
                      final notifier = DeskListProvider.of(context);
                      notifier.setCurrentDesk(widget.desk.id);
                    },
                    onLongPress: () {
                      isEditing.value = true;
                      Future.delayed(Duration(milliseconds: 100), () {
                        _focusNode.requestFocus();
                        _controller.selection = TextSelection(
                          baseOffset: 0,
                          extentOffset: _controller.text.length,
                        );
                      });
                    },
                    splashColor: context.appColors.gray300,
                    highlightColor: context.appColors.gray300,
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.s24),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: isEditing.value
                            ? TextField(
                                focusNode: _focusNode,
                                controller: _controller,
                                style: context.appTextStyle.headline1,
                                decoration: null,
                                onSubmitted: (_) => _finishEditing(),
                                autofocus: true,
                                cursorColor: context.appColors.error,
                              )
                            : Text(
                                widget.desk.title,
                                style: context.appTextStyle.headline1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                      ),
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
}
