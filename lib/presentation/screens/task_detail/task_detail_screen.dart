import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart';
import 'package:test_ex1/domain/models/prayer.dart';

import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class TaskDetailScreen extends StatefulWidget {
  const TaskDetailScreen({
    super.key,
    required this.prayer,
    required this.onPressedPrayButton,
  });
  final PrayerModel prayer;
  final VoidCallback onPressedPrayButton;
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
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TaskDataAndButtons(
              prayer: widget.prayer,
              onPressedPrayButton: widget.onPressedPrayButton,
            ),
            const SizedBox(height: S.s20),
            Comment(commentController: _commentController),
          ],
        ),
      ),
    );
  }
}
