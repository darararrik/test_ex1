import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/data/dto/desk/desk_dto.dart';
import 'package:test_ex1/domain/blocs/users_desks/users_desks_bloc.dart';
import 'package:test_ex1/domain/models/column.dart';
import 'package:test_ex1/domain/models/desk.dart';
import 'package:test_ex1/presentation/constants/app_icons.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/screens/tasks/tasks_screen.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class UserDesksScreen extends StatelessWidget {
  const UserDesksScreen({
    super.key,
    required this.userId,
    required this.titleAB,
  });
  final int userId;
  final String titleAB;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(title: titleAB),
          BlocBuilder<UsersDesksBloc, UsersDesksState>(
            builder: (context, state) {
              return state.when(
                loading: () => const LoadingState(),
                empty: () => EmptyState(
                  message: context.l10n.emptyDeskScreen,
                  iconPath: AppIcons.sketch,
                ),
                error: (mssg) => EmptyState(
                  message: context.l10n.emptyDeskScreen,
                  iconPath: AppIcons.sketch,
                ),
                loaded: (desks) => DesksListBody<DeskModel>(
                  items: desks,
                  itemBuilder: (context, desk) => UserDeskCard(
                    desk: desk,
                    onTap: () {
                      context.pushRoute(
                        UserTasksRoute(titleAB: desk.name, columnId: desk.id),
                      );
                    },
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
