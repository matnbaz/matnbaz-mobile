import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:matnbaz_mobile/graphql/gql_api.graphql.dart';
import 'package:matnbaz_mobile/widgets/repository_preview.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  static String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            document: GET_REPOSITORIES_QUERY_DOCUMENT,
            fetchPolicy: FetchPolicy.noCache,
            variables: GetRepositoriesArguments(
              first: 10,
            ).toJson()),
        builder: (result, {fetchMore, refetch}) {
          final repos = result.data == null
              ? null
              : GetRepositories$Query.fromJson(result.data!).repositories.edges;

          return Scaffold(
              appBar: AppBar(
                title: const Text("متن‌باز"),
                actions: [
                  IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.search))
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: NotificationListener(
                    onNotification: (t) {
                      if (t is ScrollEndNotification &&
                          _scrollController.position.pixels >=
                              _scrollController.position.maxScrollExtent *
                                  0.7 &&
                          result.isNotLoading) {
                        fetchMore!(FetchMoreOptions(
                            updateQuery: (previousResultData,
                                    fetchMoreResultData) =>
                                {
                                  'repositories': {
                                    'edges': [
                                      ...previousResultData!['repositories']
                                          ['edges'],
                                      ...fetchMoreResultData!['repositories']
                                          ['edges'],
                                    ],
                                    'pageInfo':
                                        fetchMoreResultData['repositories']
                                            ['pageInfo'],
                                  }
                                },
                            variables: GetRepositoriesArguments(
                                    first: 10,
                                    after: result.data!['repositories']
                                        ['pageInfo']['endCursor'])
                                .toJson()));
                      }
                      return true;
                    },
                    child: Column(children: [
                      Expanded(
                          child: ListView(
                        controller: _scrollController,
                        children: repos != null
                            ? repos
                                .map((edge) =>
                                    RepositoryPreview(repository: edge.node))
                                .toList()
                            : [SizedBox()],
                      )),
                      result.isLoading
                          ? CircularProgressIndicator()
                          : SizedBox()
                    ])),
              ));
        });
  }
}
