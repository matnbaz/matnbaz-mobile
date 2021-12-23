// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'gql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$Language
    _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$LanguageFromJson(
            Map<String, dynamic> json) =>
        GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$Language()
          ..name = json['name'] as String
          ..color = json['color'] as String?;

Map<String, dynamic>
    _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$LanguageToJson(
            GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$Language
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'color': instance.color,
        };

GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository
    _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$RepositoryFromJson(
            Map<String, dynamic> json) =>
        GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository()
          ..id = json['id'] as String
          ..fullName = json['fullName'] as String
          ..platformUrl = json['platformUrl'] as String?
          ..platform = $enumDecode(_$PlatformTypeEnumMap, json['platform'],
              unknownValue: PlatformType.artemisUnknown)
          ..descriptionLimited = json['descriptionLimited'] as String?
          ..stargazersCount = json['stargazersCount'] as int
          ..forksCount = json['forksCount'] as int
          ..openIssuesCount = json['openIssuesCount'] as int
          ..language = json['language'] == null
              ? null
              : GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository$Language
                  .fromJson(json['language'] as Map<String, dynamic>)
          ..isNew = json['isNew'] as bool;

Map<String, dynamic>
    _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$RepositoryToJson(
            GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'fullName': instance.fullName,
          'platformUrl': instance.platformUrl,
          'platform': _$PlatformTypeEnumMap[instance.platform],
          'descriptionLimited': instance.descriptionLimited,
          'stargazersCount': instance.stargazersCount,
          'forksCount': instance.forksCount,
          'openIssuesCount': instance.openIssuesCount,
          'language': instance.language?.toJson(),
          'isNew': instance.isNew,
        };

const _$PlatformTypeEnumMap = {
  PlatformType.bitbucket: 'Bitbucket',
  PlatformType.gitHub: 'GitHub',
  PlatformType.gitLab: 'GitLab',
  PlatformType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge
    _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdgeFromJson(
            Map<String, dynamic> json) =>
        GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge()
          ..cursor = json['cursor'] as String
          ..node =
              GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge$Repository
                  .fromJson(json['node'] as Map<String, dynamic>);

Map<String,
    dynamic> _$GetOwner$Query$Owner$RepositoryConnection$RepositoryEdgeToJson(
        GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
      'node': instance.node.toJson(),
    };

GetOwner$Query$Owner$RepositoryConnection$PageInfo
    _$GetOwner$Query$Owner$RepositoryConnection$PageInfoFromJson(
            Map<String, dynamic> json) =>
        GetOwner$Query$Owner$RepositoryConnection$PageInfo()
          ..hasNextPage = json['hasNextPage'] as bool
          ..endCursor = json['endCursor'] as String?;

Map<String, dynamic> _$GetOwner$Query$Owner$RepositoryConnection$PageInfoToJson(
        GetOwner$Query$Owner$RepositoryConnection$PageInfo instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'endCursor': instance.endCursor,
    };

GetOwner$Query$Owner$RepositoryConnection
    _$GetOwner$Query$Owner$RepositoryConnectionFromJson(
            Map<String, dynamic> json) =>
        GetOwner$Query$Owner$RepositoryConnection()
          ..edges = (json['edges'] as List<dynamic>?)
              ?.map((e) =>
                  GetOwner$Query$Owner$RepositoryConnection$RepositoryEdge
                      .fromJson(e as Map<String, dynamic>))
              .toList()
          ..pageInfo =
              GetOwner$Query$Owner$RepositoryConnection$PageInfo.fromJson(
                  json['pageInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$GetOwner$Query$Owner$RepositoryConnectionToJson(
        GetOwner$Query$Owner$RepositoryConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
    };

GetOwner$Query$Owner _$GetOwner$Query$OwnerFromJson(
        Map<String, dynamic> json) =>
    GetOwner$Query$Owner()
      ..repositories = GetOwner$Query$Owner$RepositoryConnection.fromJson(
          json['repositories'] as Map<String, dynamic>)
      ..id = json['id'] as String
      ..repositoriesCount = json['repositoriesCount'] as int
      ..type = $enumDecode(_$OwnerTypeEnumMap, json['type'],
          unknownValue: OwnerType.artemisUnknown)
      ..login = json['login'] as String
      ..platformId = json['platformId'] as String
      ..platform = $enumDecode(_$PlatformTypeEnumMap, json['platform'],
          unknownValue: PlatformType.artemisUnknown);

Map<String, dynamic> _$GetOwner$Query$OwnerToJson(
        GetOwner$Query$Owner instance) =>
    <String, dynamic>{
      'repositories': instance.repositories.toJson(),
      'id': instance.id,
      'repositoriesCount': instance.repositoriesCount,
      'type': _$OwnerTypeEnumMap[instance.type],
      'login': instance.login,
      'platformId': instance.platformId,
      'platform': _$PlatformTypeEnumMap[instance.platform],
    };

const _$OwnerTypeEnumMap = {
  OwnerType.organization: 'Organization',
  OwnerType.user: 'User',
  OwnerType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

GetOwner$Query _$GetOwner$QueryFromJson(Map<String, dynamic> json) =>
    GetOwner$Query()
      ..ownerByPlatform = json['ownerByPlatform'] == null
          ? null
          : GetOwner$Query$Owner.fromJson(
              json['ownerByPlatform'] as Map<String, dynamic>);

Map<String, dynamic> _$GetOwner$QueryToJson(GetOwner$Query instance) =>
    <String, dynamic>{
      'ownerByPlatform': instance.ownerByPlatform?.toJson(),
    };

GetOwnerArguments _$GetOwnerArgumentsFromJson(Map<String, dynamic> json) =>
    GetOwnerArguments(
      owner: json['owner'] as String,
      platform: $enumDecode(_$PlatformTypeEnumMap, json['platform'],
          unknownValue: PlatformType.artemisUnknown),
      reposCount: json['reposCount'] as int?,
      reposAfter: json['reposAfter'] as String?,
    );

Map<String, dynamic> _$GetOwnerArgumentsToJson(GetOwnerArguments instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'platform': _$PlatformTypeEnumMap[instance.platform],
      'reposCount': instance.reposCount,
      'reposAfter': instance.reposAfter,
    };
