import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/domain/models/comment.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/inputs/input_comment_widget.dart';

class Comment extends StatelessWidget {
  const Comment({
    super.key,
    required TextEditingController commentController,
    required this.comment,
    required this.createComment,
  }) : _commentController = commentController;
  final CommentModel? comment;
  final TextEditingController _commentController;
  final VoidCallback createComment;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Skeleton.keep(
          child: Text(
            context.l10n.comments,
            style: context.appTextStyle.headline2,
          ),
        ),
        const SizedBox(height: S.s12),
        Visibility(
          visible: comment != null,
          child: Padding(
            padding: const P(vertical: S.s16, horizontal: S.s32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //TODO: INFO: Чет я не понял где имя пользователя тянуть
                    Text(
                      comment?.userId.toString() ?? '',
                      style: context.appTextStyle.body1,
                    ),
                    Text(
                      comment?.createdAt.toFormattedString() ?? '',
                      style: context.appTextStyle.body4.copyWith(
                        color: context.appColors.gray700,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const P(vertical: S.s12),
                  child: Text(
                    comment?.body ?? '',
                    style: context.appTextStyle.body2,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: S.s12),
        Skeleton.keep(
          child: Padding(
            padding: const P(horizontal: S.s16),
            child: InputCommentWidget(
              commentController: _commentController,
              createComment: createComment,
            ),
          ),
        ),
      ],
    );
  }
}
