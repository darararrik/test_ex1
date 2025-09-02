import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:test_ex1/data/dto/column/column_dto.dart';
import 'package:test_ex1/data/dto/desk/desk_dto.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/presentation/constants/constants.dart';
import 'package:test_ex1/presentation/routing/app_routing.gr.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/layouts/background.dart';
import 'package:test_ex1/presentation/widgets/widgets.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

@RoutePage()
class MyColumnsScreen extends StatelessWidget {
  const MyColumnsScreen({super.key});

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
              onSubmit: (name) =>
                  bloc.add(MyDesksEvent.createColumn(title: name)),
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
              return Skeletonizer.sliver(
                enabled: state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                ),
                child: state.when(
                  loading: () => const SliverLoadingState(),
                  empty: () => SliverEmptyState(
                    message: context.l10n.emptyDeskScreen,
                    iconPath: AppIcons.sketch,
                  ),
                  error: (mssg) => const SliverErrorState(),
                  loaded: (columns) => SliverToBoxAdapter(
                    child: Background(
                      child: CardListBody<ColumnModel>(
                        items: columns,
                        itemBuilder: (context, column) => ColumnCard(
                          column: column,
                          onTap: () {
                            context.pushRoute(
                              MyPrayersRoute(
                                columnId: column.id,
                                columnTitle: column.title,
                              ),
                            );
                          },
                        ),
                        itemCount: columns.length,
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
