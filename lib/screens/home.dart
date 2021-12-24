import 'package:flutter/material.dart';
import 'package:matnbaz_mobile/graphql/gql_api.graphql.dart';
import 'package:matnbaz_mobile/screens/owner.dart';
import 'package:matnbaz_mobile/screens/repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("متن‌باز"),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            TextButton(
                onPressed: () => Navigator.pushNamed(
                    context, RepositoryScreen.routeName,
                    arguments: RepositoryScreenArguments(
                        repo: "monopay",
                        owner: "alitnk",
                        platformType: PlatformType.gitHub)),
                child: const Text("Repository Page")),
            TextButton(
                onPressed: () => Navigator.pushNamed(
                    context, OwnerScreen.routeName,
                    arguments: OwnerScreenArguments(
                        owner: "alitnk", platformType: PlatformType.gitHub)),
                child: const Text("Owner Page")),
          ])),
    );
  }
}
