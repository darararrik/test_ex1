import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

@RoutePage()
class UserPrayerDetailScreen extends StatefulWidget {
  const UserPrayerDetailScreen({super.key, required this.prayer});
  final PrayerModel prayer;

  @override
  State<UserPrayerDetailScreen> createState() => _UserPrayerDetailScreenState();
}

class _UserPrayerDetailScreenState extends State<UserPrayerDetailScreen> {
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
          BlocBuilder<UserPrayerDetailBloc, UserPrayerDetailState>(
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
                    onPressedPrayButton: () => context.handlePray(
                      prayer,
                      () => context.read<UserPrayerDetailBloc>().add(
                        UserPrayerDetailEvent.pray(prayer: prayer),
                      ),
                    ),
                    onPressedSubscribeButton: () => context
                        .read<UserPrayerDetailBloc>()
                        .add(UserPrayerDetailEvent.subscribe(prayer: prayer)),
                    onPressedUnsubscribeButton: () => context
                        .read<UserPrayerDetailBloc>()
                        .add(UserPrayerDetailEvent.unsubscribe(prayer: prayer)),
                    comments: comments,
                    createComment: () =>
                        context.read<UserPrayerDetailBloc>().add(
                          UserPrayerDetailEvent.createComment(
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
