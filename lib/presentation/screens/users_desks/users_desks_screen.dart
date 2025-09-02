import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/domain/models/column.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/cards/desk_card.dart';
import 'package:test_ex1/presentation/widgets/layouts/background.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/users_desks/users_desks_bloc.dart';

@RoutePage()
class UsersDesksScreen extends StatefulWidget {
  const UsersDesksScreen({super.key});

  @override
  State<UsersDesksScreen> createState() => _UsersDesksScreenState();
}

class _UsersDesksScreenState extends State<UsersDesksScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        context.read<UsersDesksBloc>().state.whenOrNull(
          loaded: (desks, cursor, isLoadingMore, hasMore) {
            if (!isLoadingMore && hasMore) {
              context.read<UsersDesksBloc>().add(
                const UsersDesksEvent.loadMore(),
              );
            }
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          FirstSliverAppBar(title: context.l10n.usersDesks),
          BlocBuilder<UsersDesksBloc, UsersDesksState>(
            builder: (context, state) {
              return Skeletonizer.sliver(
                enabled: state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
                child: state.when(
                  loading: () => const SliverLoadingState(),
                  empty: () => SliverEmptyState(
                    message: context.l10n.emptyUsersDesks,
                    iconPath: AppIcons.sketch,
                    needArrow: false,
                  ),
                  error: (mssg) => const SliverErrorState(),
                  loaded: (desks, cursor, isLoadingMore, hasMore) {
                    return SliverToBoxAdapter(
                      child: Background(
                        child: CardListBody<DeskModel>(
                          items: desks,
                          itemBuilder: (context, desk) => UserDeskCard(
                            desk: desk,
                            onTap: () => context.pushRoute(
                              UserColumnsRoute(
                                deskTitle: desk.name,
                                columnId: desk.id,
                              ),
                            ),
                          ),
                          itemCount: desks.length + (isLoadingMore ? 1 : 0),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
