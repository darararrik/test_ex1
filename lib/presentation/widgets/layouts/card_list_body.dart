import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/utils/utils.dart';

class CardListBody<T> extends StatelessWidget {
  const CardListBody({
    super.key,
    required this.items,
    required this.itemBuilder,
    required this.itemCount,
  });
  final List<T> items;
  final Widget Function(BuildContext, T) itemBuilder;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        padding: const P(horizontal: S.s16, vertical: S.s24),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (index >= items.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(),
              ),
            );
          }
          return itemBuilder(context, items[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(height: S.s16),
      ),
    );
  }
}
