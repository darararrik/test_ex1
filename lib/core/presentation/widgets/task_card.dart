// Flutter imports:

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';
import 'package:test_ex1/core/presentation/providers/desk_list/desk_list_provider.dart';
import 'package:test_ex1/core/presentation/widgets/background_delete_icon.dart';
import 'package:test_ex1/core/presentation/widgets/buttons/my_icon_button.dart';
import 'package:test_ex1/core/presentation/widgets/capsule_icon.dart';
import 'package:test_ex1/core/util/extensions/build_context_x.dart';
import 'package:test_ex1/core/util/extensions/int_x.dart';
import 'package:test_ex1/routing/app_routing.gr.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.task});
  final TaskModel task;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.task.name);
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && isEditing) {
        _finishEditing();
      }
    });
  }

  @override
  void didUpdateWidget(covariant TaskCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.task.name != widget.task.name && !isEditing) {
      _controller.text = widget.task.name;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _startEditing() {
    setState(() {
      isEditing = true;
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          _focusNode.requestFocus();
          _controller.selection = TextSelection(
            baseOffset: 0,
            extentOffset: _controller.text.length,
          );
        }
      });
    });
  }

  void _finishEditing() {
    final newName = _controller.text.trim();
    if (newName.isNotEmpty && newName != widget.task.name) {
      final notifier = DeskListProvider.of(context);
      notifier.updateTaskTitle(widget.task.id, newName);
    } else {
      _controller.text = widget.task.name;
    }
    setState(() => isEditing = false);
  }

  @override
  Widget build(BuildContext context) {
    final notifier = DeskListProvider.of(context);
    final task = notifier.getTaskById(widget.task.id);
    final countMembers = task.members.resolveCountMembers();
    final countComplete = task.complete.resolveCountComplete();

    return Stack(
      children: [
        const BackgroundDeleteIcon(),
        Dismissible(
          key: ValueKey(task.id),
          onDismissed: (direction) => notifier.deleteTaskById(task.id),
          direction: DismissDirection.endToStart,
          child: GestureDetector(
            onTap: () => context.pushRoute(TaskDetailRoute(task: task)),
            onLongPress: () {
              if (!isEditing) {
                _startEditing();
              }
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(R.r24),
                color: context.appColors.gray100,
                boxShadow: [context.appColors.shadow1],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: S.s24,
                  vertical: S.s24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CapsuleIcon(status: task.status),
                        const SizedBox(width: S.s12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Visibility(
                              visible: isEditing,
                              replacement: SizedBox(
                                width: Sz.s200,
                                child: Text(
                                  task.name,
                                  style: context.appTextStyle.headline2,
                                  overflow: TextOverflow.ellipsis,
                                ),
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
                            const SizedBox(height: S.s2),
                            Row(
                              children: [
                                _Text(
                                  text: context.l10n.members,
                                  count: countMembers,
                                ),
                                const SizedBox(width: S.s12),
                                _Text(
                                  text: context.l10n.complete,
                                  count: countComplete,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    MyIconButton(
                      onPressed: () {},
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
