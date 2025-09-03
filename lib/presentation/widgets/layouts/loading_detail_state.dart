import 'package:flutter/material.dart';
import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/s.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

class SliverLoadingDetailState extends StatefulWidget {
  const SliverLoadingDetailState({super.key});

  @override
  State<SliverLoadingDetailState> createState() =>
      _SliverLoadingDetailStateState();
}

class _SliverLoadingDetailStateState extends State<SliverLoadingDetailState> {
  late final TextEditingController _textEditingController;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final example = PrayerModel.create();
    return SliverList(
      delegate: SliverChildListDelegate.fixed([
        TaskDataAndButtons(
          prayer: example,
          onPressedPrayButton: () {},
          onPressedSubscribeButton: () {},
          onPressedUnsubscribeButton: () {},
        ),
        const SizedBox(height: S.s20),
        Comment(
          commentController: _textEditingController,
          comment: null,
          createComment: () {},
        ),
      ]),
    );
  }
}
