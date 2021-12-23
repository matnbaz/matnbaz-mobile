import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:matnbaz_mobile/screens/home.dart';
import 'package:matnbaz_mobile/screens/owner.dart';
import 'package:matnbaz_mobile/screens/repository.dart';

void main() {
  runApp(MaterialApp(
    title: 'Matnbaz',
    localizationsDelegates: const [
      GlobalCupertinoLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale("fa", "IR"),
    ],
    theme: ThemeData(
      fontFamily: "Vazir",
      primarySwatch: Colors.blue,
    ),
    locale: const Locale("fa", "IR"),
    routes: {
      '/': (context) => const HomeScreen(),
      '/owner': (context) => const OwnerScreen(),
      '/repository': (context) => const RepositoryScreen(),
    },
  ));
}
