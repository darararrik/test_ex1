import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/data/dto/column/column_dto.dart';
import 'package:test_ex1/domain/models/column.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/cards/background_card_delete.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

class ColumnCard extends StatefulWidget {
  const ColumnCard({super.key, required this.column, required this.onTap});
  final ColumnModel column;
  final VoidCallback onTap;
  @override
  State<ColumnCard> createState() => _ColumnCardState();
}

class _ColumnCardState extends State<ColumnCard> {
  late TextEditingController _controller;
  final _focusNode = FocusNode();
  final isEditing = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.column.title);
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && isEditing.value) {
        _finishEditing();
      }
    });
  }

  @override
  void didUpdateWidget(covariant ColumnCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.column.title != widget.column.title && !isEditing.value) {
      _controller.text = widget.column.title;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    isEditing.dispose();
    super.dispose();
  }

  void onDismissed(DismissDirection direction) => context
      .read<MyDesksBloc>()
      .add(MyDesksEvent.removeColumn(id: widget.column.id));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isEditing,
      builder: (context, editing, child) {
        return Stack(
          children: [
            if (context.isMyDesksWrapperRoute) const BackgroundCardDelete(),
            Dismissible(
              key: ValueKey(widget.column.id),
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
                            widget.column.title,
                            style: context.appTextStyle.headline1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          child: Visibility(
                            visible: editing,
                            replacement: Text(
                              widget.column.title,
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
    if (newTitle.isNotEmpty && newTitle != widget.column.title) {
      context.read<MyDesksBloc>().add(
        MyDesksEvent.renameColumn(id: widget.column.id, newName: newTitle),
      );
    } else {
      _controller.text = widget.column.title; // сбросить изменения
    }
  }
}
