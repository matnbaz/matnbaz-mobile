import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:matnbaz_mobile/graphql/gql_api.graphql.dart';

class RepositoryScreenArguments {
  final String repo;
  final String owner;
  final PlatformType platformType;

  RepositoryScreenArguments(
      {required this.repo, required this.owner, required this.platformType});
}

class RepositoryScreen extends StatelessWidget {
  const RepositoryScreen({Key? key}) : super(key: key);

  static String routeName = "/repository";

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as RepositoryScreenArguments;

    return Query(
        options: QueryOptions(
            document: GET_REPOSITORY_QUERY_DOCUMENT,
            fetchPolicy: FetchPolicy.noCache,
            variables: GetRepositoryArguments(
                    repo: args.repo,
                    owner: args.owner,
                    relatedReposFirst: 4,
                    platform: args.platformType)
                .toJson()),
        builder: (QueryResult result,
            {VoidCallback? refetch, FetchMore? fetchMore}) {
          if (result.hasException) {
            return Scaffold(
                appBar: AppBar(),
                body: Center(child: Text(result.exception.toString())));
          }

          if (result.isLoading) {
            return Scaffold(
                appBar: AppBar(),
                body: const Center(
                    child: SpinKitThreeBounce(color: Colors.blue)));
          }

          if (result.data == null) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("پیدا نشد"),
              ),
            );
          }
          print(result.data);
          final repo =
              GetRepository$Query.fromJson(result.data!).repositoryByPlatform;
          if (repo == null) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("پیدا نشد"),
              ),
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: Text(repo.fullName),
            ),
            body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/${repo.owner?.platformId}?v=4',
                          ),
                          radius: 50,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          repo.fullName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        )
                      ],
                    ),
                    Text((repo.stargazersCount.toString()) + " Stars"),
                  ],
                )),
          );
        });
  }
}
