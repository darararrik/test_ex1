import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/domain/models/desk.dart';
import 'package:test_ex1/presentation/constants/s.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/cards/user_desk_card.dart';

class SliverLoadingState extends StatelessWidget {
  const SliverLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    final examples = List<DeskModel>.generate(5, (_) => DeskModel.create());

    return SliverPadding(
      padding: const P(horizontal: S.s16, vertical: S.s12),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          final desk = examples[index];
          return Padding(
            padding: const P(bottom: S.s12),
            child: Skeleton.leaf(
              child: UserDeskCard(desk: desk, onTap: () {}),
            ),
          );
        }, childCount: examples.length),
      ),
    );
  }
}
