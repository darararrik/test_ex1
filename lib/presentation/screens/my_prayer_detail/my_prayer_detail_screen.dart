import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

@RoutePage()
class MyPrayerDetailScreen extends StatefulWidget {
  const MyPrayerDetailScreen({super.key, required this.prayer});
  final PrayerModel prayer;

  @override
  State<MyPrayerDetailScreen> createState() => _MyPrayerDetailScreenState();
}

class _MyPrayerDetailScreenState extends State<MyPrayerDetailScreen> {
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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: widget.prayer.title),
          BlocBuilder<MyPrayersDetailBloc, MyPrayersDetailState>(
            builder: (context, state) {
              return Skeletonizer.sliver(
                enabled: state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
                child: state.when(
                  loading: () => const SliverLoadingDetailState(),
                  error: (message) => const SliverErrorState(),
                  loaded: (prayer, comments) => SliverPrayerDetailBody(
                    commentController: _commentController,
                    prayer: prayer,
                    comments: comments,
                    onPressedPrayButton: () => context.handlePray(
                      prayer,
                      () => context.read<MyPrayersDetailBloc>().add(
                        MyPrayersDetailEvent.pray(prayer: prayer),
                      ),
                    ),
                    onPressedSubscribeButton: () => context
                        .read<MyPrayersDetailBloc>()
                        .add(MyPrayersDetailEvent.subscribe(prayer: prayer)),
                    onPressedUnsubscribeButton: () => context
                        .read<MyPrayersDetailBloc>()
                        .add(MyPrayersDetailEvent.unsubscribe(prayer: prayer)),
                    createComment: () =>
                        context.read<MyPrayersDetailBloc>().add(
                          MyPrayersDetailEvent.createComment(
                            prayerId: prayer.id,
                            body: _commentController.text.trim(),
                          ),
                        ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
