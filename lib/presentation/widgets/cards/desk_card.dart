import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/cards/background_card_delete.dart';

class DeskCard extends StatefulWidget {
  const DeskCard({super.key, required this.desk, required this.onTap});
  final DeskModel desk;
  final VoidCallback onTap;
  @override
  State<DeskCard> createState() => _DeskCardState();
}

class _DeskCardState extends State<DeskCard> {
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
  void didUpdateWidget(covariant DeskCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.desk.title != widget.desk.title && !isEditing.value) {
      _controller.text = widget.desk.title;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    isEditing.dispose();
    super.dispose();
  }

  void onDismissed(DismissDirection direction) =>
      context.read<MyDesksBloc>().add(MyDesksEvent.removeDesk(widget.desk.id));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isEditing,
      builder: (context, editing, child) {
        return Stack(
          children: [
            if (context.isMyDesksWrapperRoute) const BackgroundCardDelete(),
            Dismissible(
              key: ValueKey(widget.desk.id),
              direction: context.isMyDesksWrapperRoute
                  ? DismissDirection.endToStart
                  : DismissDirection.none,
              onDismissed: context.isMyDesksWrapperRoute ? onDismissed : null,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.appColors.gray100,
                  borderRadius: BorderRadius.circular(R.r24),
                  boxShadow: [context.appColors.shadow1],
                ),
                child: Material(
                  color: context.appColors.gray100,
                  borderRadius: BorderRadius.circular(R.r24),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(R.r24),
                    onTap: widget.onTap,
                    onLongPress: context.isMyDesksWrapperRoute
                        ? _onLongPress
                        : null,
                    splashColor: context.appColors.gray300,
                    highlightColor: context.appColors.gray300,
                    child: Padding(
                      padding: const P(all: S.s24),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Visibility(
                          visible: context.isMyDesksWrapperRoute,
                          replacement: Text(
                            widget.desk.title,
                            style: context.appTextStyle.headline1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          child: Visibility(
                            visible: editing,
                            replacement: Text(
                              widget.desk.title,
                              style: context.appTextStyle.headline1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                            child: TextField(
                              focusNode: _focusNode,
                              controller: _controller,
                              style: context.appTextStyle.headline1,
                              decoration: null,
                              onSubmitted: (_) => _finishEditing(),
                              autofocus: true,
                              cursorColor: context.appColors.error,
                            ),
                          ),
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

  void _onLongPress() {
    isEditing.value = true;
    Future.delayed(const Duration(milliseconds: 100), () {
      _focusNode.requestFocus();
      _controller.selection = TextSelection(
        baseOffset: 0,
        extentOffset: _controller.text.length,
      );
    });
  }

  void _finishEditing() {
    isEditing.value = false;
    final newTitle = _controller.text.trim();
    if (newTitle.isNotEmpty && newTitle != widget.desk.title) {
      context.read<MyDesksBloc>().add(
        MyDesksEvent.renameDesk(widget.desk.id, newTitle),
      );
    } else {
      _controller.text = widget.desk.title; // сбросить изменения
    }
  }
}
