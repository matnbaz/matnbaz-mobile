import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:matnbaz_mobile/graphql/gql_api.graphql.dart';
import 'package:matnbaz_mobile/icons/matnbaz_custom_icons.dart';

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

          final repository = result.data != null
              ? GetRepository$Query.fromJson(result.data!).repositoryByPlatform
              : null;

          return Scaffold(
            appBar: AppBar(
              title: Text(
                  result.data == null && result.isNotLoading ? "پیدا نشد" : ""),
            ),
            body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: result.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(color: Colors.blue))
                    : ListView(
                        children: [
                          if (repository != null) ...[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/${repository.owner?.platformId}?v=4',
                              ),
                              radius: 64,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Column(
                              children: [
                                Text(
                                  repository.fullName,
                                  textDirection: TextDirection.ltr,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                if (repository.descriptionLimited != null) ...[
                                  const SizedBox(
                                    height: 0,
                                  ),
                                  Text(
                                    repository.descriptionLimited!,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    textDirection:
                                        repository.descriptionDirection ==
                                                ScriptDirection.rtl
                                            ? TextDirection.rtl
                                            : TextDirection.ltr,
                                  ),
                                ],
                                if (repository.language != null) ...[
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    textDirection: TextDirection.ltr,
                                    children: [
                                      if (repository.language?.color?.rgba !=
                                          null)
                                        Container(
                                          width: 14,
                                          height: 14,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromRGBO(
                                                  repository.language!.color!
                                                      .rgba.red,
                                                  repository.language!.color!
                                                      .rgba.green,
                                                  repository.language!.color!
                                                      .rgba.blue,
                                                  1)),
                                        ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(repository.language!.name)
                                    ],
                                  ),
                                ],
                              ],
                            )),
                            const SizedBox(
                              height: 20,
                            ),
                            Wrap(
                              direction: Axis.horizontal,
                              alignment: WrapAlignment.center,
                              spacing: 32,
                              runSpacing: 32,
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      "ستاره‌ها",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Row(
                                      textDirection: TextDirection.ltr,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.star_border,
                                          size: 20,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                            repository.stargazersCount
                                                .toString(),
                                            style:
                                                const TextStyle(fontSize: 18))
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      "فورک‌ها",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Row(
                                      textDirection: TextDirection.ltr,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          MatnbazCustomIcons.repo_forked,
                                          size: 20,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Text(repository.forksCount.toString(),
                                            style:
                                                const TextStyle(fontSize: 18))
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      "موضوع‌های باز",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Row(
                                      textDirection: TextDirection.ltr,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          MatnbazCustomIcons.issue_opened,
                                          size: 20,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                            repository.openIssuesCount
                                                .toString(),
                                            style:
                                                const TextStyle(fontSize: 18))
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ],
                      )),
          );
        });
  }
}
