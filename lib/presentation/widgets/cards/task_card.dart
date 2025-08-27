import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:test_ex1/domain/models/column/column_model.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
    required this.task,
    required this.onTapRoute,
    required this.onPressed,
  });
  final TaskModel task;

  final Function(TaskModel task) onPressed;
  final Function(TaskModel task) onTapRoute;
  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  final isEditing = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.task.title);
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && isEditing.value) {
        _finishEditing();
      }
    });
  }

  @override
  void didUpdateWidget(covariant TaskCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.task.title != widget.task.title && !isEditing.value) {
      _controller.text = widget.task.title;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void onDismissed(DismissDirection direction) => context
      .read<MyTasksBloc>()
      .add(MyTasksEvent.removeTask(widget.task.id, widget.task.deskId));

  @override
  Widget build(BuildContext context) {
    final countMembers = widget.task.members.resolveCountMembers();
    final countComplete = widget.task.complete.resolveCountComplete();
    return ValueListenableBuilder<bool>(
      valueListenable: isEditing,
      builder: (context, value, child) {
        return Stack(
          children: [
            const BackgroundCardDelete(),
            Dismissible(
              key: ValueKey(widget.task.id),
              onDismissed: context.isMyDesksWrapperRoute ? onDismissed : null,
              direction: context.isMyDesksWrapperRoute
                  ? DismissDirection.endToStart
                  : DismissDirection.none,
              child: GestureDetector(
                onTap: () => widget.onTapRoute(widget.task),
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
                            CapsuleIcon(task: widget.task),
                            const SizedBox(width: S.s12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Visibility(
                                  visible: context.isMyDesksWrapperRoute,
                                  replacement: Text(
                                    widget.task.title,
                                    style: context.appTextStyle.headline2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  child: Visibility(
                                    visible: isEditing.value,
                                    replacement: Text(
                                      widget.task.title,
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
                          onPressed: () => widget.onPressed(widget.task),
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
    if (newName.isNotEmpty && newName != widget.task.title) {
      context.read<MyTasksBloc>().add(
        MyTasksEvent.renameTask(widget.task.id, widget.task.deskId, newName),
      );
    } else {
      _controller.text = widget.task.title;
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
