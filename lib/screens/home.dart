import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:matnbaz_mobile/graphql/gql_api.graphql.dart';
import 'package:matnbaz_mobile/widgets/repository_preview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            document: GET_REPOSITORIES_QUERY_DOCUMENT,
            fetchPolicy: FetchPolicy.noCache,
            variables: GetRepositoriesArguments(
              first: 20,
              order: RepoOrder.pushedDesc,
            ).toJson()),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return Scaffold(
                appBar: AppBar(),
                body: const Center(child: CircularProgressIndicator()));
          }

          if (result.data == null) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("پیدا نشد"),
              ),
            );
          }

          final repos =
              GetRepositories$Query.fromJson(result.data!).repositories.edges!;

          return Scaffold(
            appBar: AppBar(
              title: const Text("متن‌باز"),
              actions: [
                IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
              ],
            ),
            body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: repos
                      .map((edge) => RepositoryPreview(repository: edge.node))
                      .toList(),
                )),
          );
        });
  }
}
