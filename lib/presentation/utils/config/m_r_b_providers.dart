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
        RepositoryProvider<RemoteService>(
          create: (context) => RemoteService(dio: config.dio),
        ),
        RepositoryProvider<HttpClient>(
          create: (context) => HttpClient(context.read<RemoteService>()),
        ),
        RepositoryProvider<RemoteDataSource>(
          create: (context) => RemoteDataSource(context.read<HttpClient>()),
        ),
        RepositoryProvider<IDeskRepository>(
          create: (context) => DeskRepositoryImpl(
            remoteDataSource: context.read<RemoteDataSource>(),
          ),
        ),
        RepositoryProvider<IColumnRepository>(
          create: (context) => ColumnRepositoryImpl(
            remoteDataSource: context.read<RemoteDataSource>(),
          ),
        ),
        RepositoryProvider<IPrayerRepository>(
          create: (context) => PrayerRepositoryImpl(
            remoteDataSource: context.read<RemoteDataSource>(),
          ),
        ),
        RepositoryProvider<IAuthRepository>(
          create: (context) => AuthRepositoryImpl(
            remoteDataSource: context.read<RemoteDataSource>(),
            tokenRepository: context.read<ITokenRepository>(),
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
