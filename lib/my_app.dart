import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:test_ex1/data/data.dart';
import 'package:test_ex1/domain/blocs/followed/followed_tasks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/domain/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';
import 'package:test_ex1/presentation/l10n/app_localizations.dart';
import 'package:test_ex1/presentation/routing/app_routing.dart';
import 'package:test_ex1/presentation/utils/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AppDatabase>(create: (_) => AppDatabase()),
        RepositoryProvider<LocalDSMyDesks>(create: (_) => LocalDSMyDesks()),
        RepositoryProvider<LocalDSUsersDesks>(
          create: (_) => LocalDSUsersDesks(),
        ),
        RepositoryProvider<LocalDSFollowed>(create: (_) => LocalDSFollowed()),

        RepositoryProvider<IMyDesksRepository>(
          create: (context) =>
              MyDeskRepositoryImpl(localDS: context.read<LocalDSMyDesks>()),
        ),
        RepositoryProvider<IUsersDesksRepository>(
          create: (context) => UsersDesksRepositoryImpl(
            localDS: context.read<LocalDSUsersDesks>(),
          ),
        ),
        RepositoryProvider<IAuthRepository>(
          create: (context) => AuthRepositoryImpl(
            localDS: LocalDSProfile(profileDao: ProfileDao(context.read())),
          ),
        ),
        RepositoryProvider<IFollowedTasksRepository>(
          create: (context) => FollowedTasksRepositoryImpl(
            localDSMyDesks: context.read<LocalDSMyDesks>(),
            localDSUsersDesks: context.read<LocalDSUsersDesks>(),
            localDSFollowed: context.read<LocalDSFollowed>(),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FollowedTasksBloc(context.read<IFollowedTasksRepository>()),
          ),
          BlocProvider(create: (context) => MyDesksBloc(context.read())),
          BlocProvider(create: (context) => MyTasksBloc(context.read())),
        ],
        child: MaterialApp.router(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en')],
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}
