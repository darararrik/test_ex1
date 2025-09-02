import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/data/data.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

class MRBProviders extends StatelessWidget {
  const MRBProviders({super.key, required this.child, required this.config});
  final Widget child;
  final AppConfig config;
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ITokenRepository>.value(
          value: config.tokenRepository,
        ),

        RepositoryProvider<IDeskRepository>(
          create: (context) =>
              DeskRepositoryImpl(remoteDSDesks: RemoteDSDesks(config.dio)),
        ),
        RepositoryProvider<IColumnRepository>(
          create: (context) => ColumnRepositoryImpl(
            remoteDSColumns: RemoteDSColumns(config.dio),
          ),
        ),
        RepositoryProvider<IPrayerRepository>(
          create: (context) => PrayerRepositoryImpl(
            remoteDSPrayers: RemoteDSPrayers(config.dio),
          ),
        ),
        RepositoryProvider<IAuthRepository>(
          create: (context) => AuthRepositoryImpl(
            remoteDSAuth: RemoteDSAuth(config.dio),
            tokenRepository: context.read(),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(context.read(), context.read()),
          ),
        ],
        child: child,
      ),
    );
  }
}
