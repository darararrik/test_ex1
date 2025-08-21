import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:test_ex1/domain/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/old-providers/providers.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/loading_state.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';

@RoutePage()
class MyDesksListScreen extends StatelessWidget {
  const MyDesksListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CreateUnitFAB(
        onPressed: () async {
          final bloc = context.read<MyDesksBloc>();
          await showDialog(
            context: context,
            builder: (context) => CreateDialog(
              title: context.l10n.newColumn,
              onSubmit: (name) => bloc.add(MyDesksEvent.createDesk(name)),
              hintText: context.l10n.enterTitleColumn,
            ),
          );
        },
      ),
      body: CustomScrollView(
        slivers: [
          FirstSliverAppBar(title: context.l10n.myDesk),
          BlocBuilder<MyDesksBloc, MyDesksState>(
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
                  itemBuilder: (context, desk) => DeskCard(
                    desk: desk,
                    onTap: () {
                      context.pushRoute(
                        MyTasksRoute(deskId: desk.id, titleAB: desk.title),
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
