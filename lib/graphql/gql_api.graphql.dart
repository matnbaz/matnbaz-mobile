// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'gql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$Language
    extends JsonSerializable with EquatableMixin {
  GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$Language();

  factory GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$Language.fromJson(
          Map<String, dynamic> json) =>
      _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$LanguageFromJson(
          json);

  late String name;

  String? color;

  @override
  List<Object?> get props => [name, color];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$LanguageToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository
    extends JsonSerializable with EquatableMixin {
  GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository();

  factory GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository.fromJson(
          Map<String, dynamic> json) =>
      _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$RepositoryFromJson(
          json);

  late String id;

  late String fullName;

  String? platformUrl;

  @JsonKey(unknownEnumValue: PlatformType.artemisUnknown)
  late PlatformType platform;

  String? descriptionLimited;

  late int stargazersCount;

  late int forksCount;

  late int openIssuesCount;

  GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$Language?
      language;

  late bool isNew;

  @override
  List<Object?> get props => [
        id,
        fullName,
        platformUrl,
        platform,
        descriptionLimited,
        stargazersCount,
        forksCount,
        openIssuesCount,
        language,
        isNew
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$RepositoryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge
    extends JsonSerializable with EquatableMixin {
  GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge();

  factory GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge.fromJson(
          Map<String, dynamic> json) =>
      _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdgeFromJson(json);

  late String cursor;

  late GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository node;

  @override
  List<Object?> get props => [cursor, node];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$Owner$RepositoryConnection$PageInfo
    extends JsonSerializable with EquatableMixin {
  GetOwner$Query$Owner$RepositoryConnection$PageInfo();

  factory GetOwner$Query$Owner$RepositoryConnection$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetOwner$Query$Owner$RepositoryConnection$PageInfoFromJson(json);

  late bool hasNextPage;

  String? endCursor;

  @override
  List<Object?> get props => [hasNextPage, endCursor];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOwner$Query$Owner$RepositoryConnection$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$Owner$RepositoryConnection extends JsonSerializable
    with EquatableMixin {
  GetOwner$Query$Owner$RepositoryConnection();

  factory GetOwner$Query$Owner$RepositoryConnection.fromJson(
          Map<String, dynamic> json) =>
      _$GetOwner$Query$Owner$RepositoryConnectionFromJson(json);

  List<GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge>? edges;

  late GetOwner$Query$Owner$RepositoryConnection$PageInfo pageInfo;

  @override
  List<Object?> get props => [edges, pageInfo];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOwner$Query$Owner$RepositoryConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$Owner extends JsonSerializable with EquatableMixin {
  GetOwner$Query$Owner();

  factory GetOwner$Query$Owner.fromJson(Map<String, dynamic> json) =>
      _$GetOwner$Query$OwnerFromJson(json);

  late GetOwner$Query$Owner$RepositoryConnection repositories;

  late String id;

  late int repositoriesCount;

  @JsonKey(unknownEnumValue: OwnerType.artemisUnknown)
  late OwnerType type;

  late String login;

  late String platformId;

  @JsonKey(unknownEnumValue: PlatformType.artemisUnknown)
  late PlatformType platform;

  @override
  List<Object?> get props =>
      [repositories, id, repositoriesCount, type, login, platformId, platform];
  @override
  Map<String, dynamic> toJson() => _$GetOwner$Query$OwnerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query extends JsonSerializable with EquatableMixin {
  GetOwner$Query();

  factory GetOwner$Query.fromJson(Map<String, dynamic> json) =>
      _$GetOwner$QueryFromJson(json);

  GetOwner$Query$Owner? ownerByPlatform;

  @override
  List<Object?> get props => [ownerByPlatform];
  @override
  Map<String, dynamic> toJson() => _$GetOwner$QueryToJson(this);
}

enum PlatformType {
  @JsonValue('Bitbucket')
  bitbucket,
  @JsonValue('GitHub')
  gitHub,
  @JsonValue('GitLab')
  gitLab,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum OwnerType {
  @JsonValue('Organization')
  organization,
  @JsonValue('User')
  user,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class GetOwnerArguments extends JsonSerializable with EquatableMixin {
  GetOwnerArguments(
      {required this.owner,
      required this.platform,
      this.reposCount,
      this.reposAfter});

  @override
  factory GetOwnerArguments.fromJson(Map<String, dynamic> json) =>
      _$GetOwnerArgumentsFromJson(json);

  late String owner;

  @JsonKey(unknownEnumValue: PlatformType.artemisUnknown)
  late PlatformType platform;

  final int? reposCount;

  final String? reposAfter;

  @override
  List<Object?> get props => [owner, platform, reposCount, reposAfter];
  @override
  Map<String, dynamic> toJson() => _$GetOwnerArgumentsToJson(this);
}

final GET_OWNER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetOwner'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'owner')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'platform')),
            type: NamedTypeNode(
                name: NameNode(value: 'PlatformType'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'reposCount')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '12')),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'reposAfter')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'ownerByPlatform'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'owner'),
                  value: VariableNode(name: NameNode(value: 'owner'))),
              ArgumentNode(
                  name: NameNode(value: 'platform'),
                  value: VariableNode(name: NameNode(value: 'platform')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'repositories'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'first'),
                        value:
                            VariableNode(name: NameNode(value: 'reposCount'))),
                    ArgumentNode(
                        name: NameNode(value: 'after'),
                        value:
                            VariableNode(name: NameNode(value: 'reposAfter')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'edges'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'cursor'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'node'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'fullName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'platformUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'platform'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'descriptionLimited'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'stargazersCount'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'forksCount'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'openIssuesCount'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'language'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'color'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'isNew'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'pageInfo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'hasNextPage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'endCursor'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'repositoriesCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'login'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'platformId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'platform'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetOwnerQuery extends GraphQLQuery<GetOwner$Query, GetOwnerArguments> {
  GetOwnerQuery({required this.variables});

  @override
  final DocumentNode document = GET_OWNER_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetOwner';

  @override
  final GetOwnerArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetOwner$Query parse(Map<String, dynamic> json) =>
      GetOwner$Query.fromJson(json);
}
