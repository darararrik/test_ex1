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
class UserColumnsScreen extends StatelessWidget {
  const UserColumnsScreen({
    super.key,
    required this.deskTitle,
    required this.columnId,
  });
  final String deskTitle;
  final int columnId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: deskTitle),
          BlocBuilder<UserColumnsBloc, UserColumnsState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                error: (message) => const ErrorState(),
                empty: () => EmptyState(
                  message: context.l10n.emptyUsersColumns,
                  iconPath: AppIcons.sketch,
                ),
                loaded: (columns) => CardListBody<ColumnModel>(
                  items: columns,
                  itemBuilder: (contetx, column) => ColumnCard(
                    column: column,
                    onTap: () => UserColumnsRoute(
                      deskTitle: deskTitle,
                      columnId: columnId,
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
