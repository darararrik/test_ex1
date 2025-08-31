import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/blocs.dart';
import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/screens/task_detail/task_detail_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class MyTaskDetailPage extends StatelessWidget {
  const MyTaskDetailPage({super.key, required this.prayer});
  final PrayerModel prayer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: prayer.title),
          BlocBuilder<MyPrayersDetailBloc, MyPrayersDetailState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                loaded: (prayer) => TaskDetailScreen(
                  prayer: prayer,
                  onPressedPrayButton: () => context.handlePray(
                    prayer,
                    () => context.read<MyPrayersDetailBloc>().add(
                      MyPrayersDetailEvent.pray(prayer: prayer),
                    ),
                  ),
                ),
                error: (message) => const ErrorState(),
              );
            },
          ),
        ],
      ),
    );
  }
}
