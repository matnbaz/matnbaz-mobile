import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:matnbaz_mobile/graphql/gql_api.graphql.dart';

class OwnerScreenArguments {
  final String owner;
  final PlatformType platformType;

  OwnerScreenArguments({required this.owner, required this.platformType});
}

class OwnerScreen extends StatelessWidget {
  const OwnerScreen({Key? key}) : super(key: key);

  static String routeName = "/owner";

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as OwnerScreenArguments;

    return Query(
        options: QueryOptions(
            fetchPolicy: FetchPolicy.noCache,
            document: GET_OWNER_QUERY_DOCUMENT,
            variables: GetOwnerArguments(
                    owner: args.owner,
                    platform: args.platformType,
                    reposCount: 5)
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

          final owner = GetOwner$Query.fromJson(result.data!).ownerByPlatform;
          if (owner == null) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("پیدا نشد"),
              ),
            );
          }
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
