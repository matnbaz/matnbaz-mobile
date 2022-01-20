import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:matnbaz_mobile/screens/home.dart';
import 'package:matnbaz_mobile/screens/repository.dart';

void main() async {
  await initHiveForFlutter();

  final HttpLink httpLink = HttpLink(
    'https://server.matnbaz.net/graphql',
  );

  final Link link = httpLink;

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  runApp(GraphQLProvider(
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
          HomeScreen.routeName: (context) => HomeScreen(),
          // OwnerScreen.routeName: (context) => const OwnerScreen(),
          RepositoryScreen.routeName: (context) => const RepositoryScreen(),
        },
      )));
}
