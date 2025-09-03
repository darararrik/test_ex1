import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:test_ex1/presentation/presentation.dart';

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
