import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/models/column.dart';
import 'package:test_ex1/domain/models/prayer.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/prayer_detail_screen.dart';
import 'package:test_ex1/presentation/widgets/layouts/prayers_card_list.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/blocs.dart';
import 'package:test_ex1/state/blocs/user_columns/user_columns_bloc.dart';

@RoutePage()
class UserColumnsScreen extends StatefulWidget {
  const UserColumnsScreen({
    super.key,
    required this.deskTitle,
    required this.columnId,
  });
  final String deskTitle;
  final int columnId;

  @override
  State<UserColumnsScreen> createState() => _UserColumnsScreenState();
}

class _UserColumnsScreenState extends State<UserColumnsScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          MySliverAppBar(title: widget.deskTitle),
          BlocBuilder<UserColumnsBloc, UserColumnsState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                error: (message) => const ErrorState(),
                empty: () => EmptyState(
                  message: context.l10n.emptyUsersColumns,
                  iconPath: AppIcons.sketch,
                  needArrow: false,
                ),
                loaded: (columns, afterCursor, isLoadingMore, hasMore) =>
                    CardListBody<ColumnModel>(
                      items: columns,
                      itemBuilder: (contetx, column) => ColumnCard(
                        column: column,
                        onTap: () => context.pushRoute(
                          UserPrayersRoute(
                            columnId: column.id,
                            columnTitle: column.title,
                          ),
                        ),
                      ),
                      itemCount: columns.length,
                    ),
              );
            },
          ),
        ],
      ),
    );
  }
}
