import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/users_desks/users_desks_bloc.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class UsersDesksScreen extends StatefulWidget {
  const UsersDesksScreen({super.key});

  @override
  State<UsersDesksScreen> createState() => _UsersDesksScreenState();
}

class _UsersDesksScreenState extends State<UsersDesksScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UsersDesksBloc>().add(const UsersDesksEvent.getUsersDesks());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          FirstSliverAppBar(title: context.l10n.usersDesks),
          // BlocBuilder<UsersDesksBloc, UsersDesksState>(
          //   builder: (context, state) {
          //     return state.when(
          //       loading: () => const LoadingState(),
          //       error: (message) => const ErrorState(),
          //       empty: () {
          //         return EmptyState(
          //           message: context.l10n.emptyDeskScreen,
          //           iconPath: AppIcons.sketch,
          //         );
          //       },
          //       loaded: (desks) => DesksListBody<DeskModel>(
          //         items: desks,
          //         itemBuilder: (context, desk) => UserDeskCard(
          //           desk: desk,
          //           onTap: () {
          //             context.pushRoute(UserDesksRoute(titleAB: desk.name));
          //           },
          //         ),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
