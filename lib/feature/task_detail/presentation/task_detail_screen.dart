import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:test_ex1/core/constants/constants.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';
import 'package:test_ex1/core/presentation/widgets/widgets.dart';
import 'package:test_ex1/core/util/extensions/extensions.dart';
import 'package:test_ex1/feature/desk_list/presentation/providers/providers.dart';

import 'widgets/input_comment_widget.dart';

@RoutePage()
class TaskDetailScreen extends StatefulWidget {
  const TaskDetailScreen({super.key, required this.task});
  final TaskModel task;
  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  late final TextEditingController _commentController;
  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = DeskListProvider.of(context);
    final currentTask = notifier.currentDesk.tasks.firstWhere(
      (element) => element.id == widget.task.id,
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: Text(currentTask.name)),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _TaskData(currentTask),
                  const SizedBox(height: S.s20),
                  _Comment(commentController: _commentController),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TaskData extends StatelessWidget {
  const _TaskData(this.task);
  final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: context.appColors.gray500),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: S.s16,
        ).copyWith(bottom: S.s24),
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(R.r24),
                image: const DecorationImage(
                  image: Svg(AppIcons.background),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: S.s16,
                  horizontal: S.s16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _WhiteBoxText(
                          title: context.l10n.date,
                          data: task.date.toFormattedString(),
                        ),
                        const SizedBox(width: S.s12),
                        _WhiteBoxText(
                          title: context.l10n.totalPrayers,
                          data: task.totalPrayers.toString(),
                        ),
                      ],
                    ),
                    const SizedBox(height: S.s12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _WhiteBoxText(
                          title: context.l10n.otherPrayers,
                          data: task.otherPrayers.toString(),
                        ),
                        const SizedBox(width: S.s12),
                        _WhiteBoxText(
                          title: context.l10n.myPrayers,
                          data: task.myPrayers.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: S.s12),
            PrimaryButton(
              isEnabled: true,
              onPressed: () {},
              text: context.l10n.prayed,
            ),
            const SizedBox(height: S.s8),
            SecondaryButton(
              isEnabled: false,
              onPressed: () {},
              text: context.l10n.follow,
            ),
          ],
        ),
      ),
    );
  }
}

class _WhiteBoxText extends StatelessWidget {
  const _WhiteBoxText({required this.title, required this.data});
  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.appColors.gray100,
          borderRadius: BorderRadius.circular(R.r28),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: S.s28),
          child: Center(
            child: Column(
              children: [
                Text(
                  title,
                  style: context.appTextStyle.headline3.copyWith(
                    color: context.appColors.gray700,
                  ),
                ),
                Text(data, style: context.appTextStyle.headline1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Comment extends StatelessWidget {
  const _Comment({required TextEditingController commentController})
    : _commentController = commentController;

  final TextEditingController _commentController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(context.l10n.comments, style: context.appTextStyle.headline2),
        const SizedBox(height: S.s12),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: S.s16,
            horizontal: S.s32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("name", style: context.appTextStyle.body1),
                  Text(
                    "date",
                    style: context.appTextStyle.body4.copyWith(
                      color: context.appColors.gray700,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: S.s12),
                child: Text("comment", style: context.appTextStyle.body2),
              ),
            ],
          ),
        ),
        const SizedBox(height: S.s12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: S.s16),
          child: InputCommentWidget(commentController: _commentController),
        ),
      ],
    );
  }
}
