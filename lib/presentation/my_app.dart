import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:test_ex1/data/data.dart';
import 'package:test_ex1/domain/blocs/blocs.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';
import 'package:test_ex1/presentation/l10n/app_localizations.dart';
import 'package:test_ex1/presentation/routing/app_routing.dart';
import 'package:test_ex1/presentation/utils/m_r_b_providers.dart';
import 'package:test_ex1/presentation/utils/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MRBProviders(
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
    );
  }
}
