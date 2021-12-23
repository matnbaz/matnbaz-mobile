import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:matnbaz_mobile/graphql/gql_api.graphql.dart';

class OwnerScreen extends StatelessWidget {
  const OwnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            document: GetOwnerQuery(
                    variables: GetOwnerArguments(
                        owner: 'alitnk', platform: PlatformType.gitHub))
                .document,
            variables: {'owner': "alitnk", "platform": "GitHub"}),
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

          final owner =
              GetOwner$Query.fromJson(result.data ?? {}).ownerByPlatform;
          if (owner == null) return const Text("what");

          return Scaffold(
            appBar: AppBar(
              title: Text(owner.login),
            ),
            body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/${owner.platformId}?v=4',
                          ),
                          radius: 50,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          owner.login,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        )
                      ],
                    ),
                    Text((owner.repositories.edges?.length.toString() ?? "0") +
                        " Repositories"),
                  ],
                )),
          );
        });
  }
}
