import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:matnbaz_mobile/graphql/gql_api.graphql.dart';
import 'package:matnbaz_mobile/widgets/repository_preview.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/";

  final int _perPage = 12;

  final RefreshController _refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            document: GET_REPOSITORIES_QUERY_DOCUMENT,
            fetchPolicy: FetchPolicy.noCache,
            variables: GetRepositoriesArguments(
              first: _perPage,
            ).toJson()),
        builder: (result, {fetchMore, refetch}) {
          final repos = result.data != null
              ? GetRepositories$Query.fromJson(result.data!).repositories.edges
              : null;

          return Scaffold(
            appBar: AppBar(
              title: const Text("متن‌باز"),
              actions: [
                IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
              ],
            ),
            body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Expanded(
                      child: SmartRefresher(
                          onRefresh: () async {
                            await refetch!();
                            _refreshController.refreshCompleted();
                          },
                          onLoading: () async {
                            if (result.data != null) {
                              await fetchMore!(FetchMoreOptions(
                                  updateQuery: (previousResultData,
                                          fetchMoreResultData) =>
                                      {
                                        'repositories': {
                                          'edges': [
                                            ...previousResultData![
                                                'repositories']['edges'],
                                            ...fetchMoreResultData![
                                                'repositories']['edges'],
                                          ],
                                          'pageInfo': fetchMoreResultData[
                                              'repositories']['pageInfo'],
                                        }
                                      },
                                  variables: GetRepositoriesArguments(
                                          first: _perPage,
                                          after: result.data!['repositories']
                                              ['pageInfo']['endCursor'])
                                      .toJson()));
                            }

                            _refreshController.loadComplete();
                          },
                          enablePullDown: true,
                          enablePullUp: true,
                          controller: _refreshController,
                          header: const WaterDropHeader(
                            complete: Text("لیست تازه‌سازی شد."),
                          ),
                          footer: const ClassicFooter(
                            loadingText: "در حال بارگیری...",
                          ),
                          child: ListView(
                            children: [
                              if (repos != null)
                                ...repos
                                    .map((edge) => RepositoryPreview(
                                        repository: edge.node))
                                    .toList(),
                            ],
                          ))),
                ])),
          );
        });
  }
}
