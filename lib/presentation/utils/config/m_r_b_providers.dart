import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/data/data.dart';
import 'package:test_ex1/data/data_source/auth/remote/remote_ds_auth.dart';
import 'package:test_ex1/domain/blocs/blocs.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';
import 'package:test_ex1/domain/repositories/token_repository.dart';
import 'package:test_ex1/presentation/utils/utils.dart';

class MRBProviders extends StatelessWidget {
  const MRBProviders({super.key, required this.child, required this.config});
  final Widget child;
  final AppConfig config;
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AppDatabase>.value(value: config.appDatabase),
        RepositoryProvider<ITokenRepository>.value(
          value: config.tokenRepository,
        ),
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
            remoteDSAuth: RemoteDSAuth(config.dio),
            tokenRepository: context.read(),
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
          BlocProvider(create: (context) => FollowedTasksBloc(context.read())),
          BlocProvider(create: (context) => MyDesksBloc(context.read())),
          BlocProvider(create: (context) => MyTasksBloc(context.read())),
          BlocProvider(create: (context) => AuthBloc(context.read())),
        ],
        child: child,
      ),
    );
  }
}
