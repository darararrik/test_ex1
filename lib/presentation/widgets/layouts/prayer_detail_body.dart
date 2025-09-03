import 'package:flutter/material.dart';

import 'package:test_ex1/domain/models/comment.dart';
import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class SliverPrayerDetailBody extends StatelessWidget {
  const SliverPrayerDetailBody({
    super.key,
    required this.prayer,
    required this.onPressedPrayButton,
    required this.onPressedSubscribeButton,
    required this.onPressedUnsubscribeButton,
    required this.createComment,
    required this.comments,
    required this.commentController,
  });
  final PrayerModel prayer;
  final VoidCallback onPressedPrayButton;
  final VoidCallback onPressedSubscribeButton;
  final VoidCallback onPressedUnsubscribeButton;
  final VoidCallback createComment;
  final TextEditingController commentController;

  final List<CommentModel> comments;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        TaskDataAndButtons(
          prayer: prayer,
          onPressedPrayButton: onPressedPrayButton,
          onPressedSubscribeButton: onPressedSubscribeButton,
          onPressedUnsubscribeButton: onPressedUnsubscribeButton,
        ),
        const SizedBox(height: S.s20),
        Comment(
          commentController: commentController,
          comment: comments.firstOrNull,
          createComment: createComment,
        ),
      ]),
    );
  }
}
