import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:test_ex1/data/data.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';
import 'package:test_ex1/main.dart';
import 'package:test_ex1/presentation/l10n/app_localizations.dart';
import 'package:test_ex1/presentation/routing/app_routing.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/state/blocs/blocs.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.config});
  final AppConfig config;
  @override
  Widget build(BuildContext context) {
    return MRBProviders(
      config: config,
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
        routerConfig: config.router.config(),
      ),
    );
  }
}
