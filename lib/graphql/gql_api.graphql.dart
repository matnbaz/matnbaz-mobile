// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'gql_api.graphql.g.dart';

mixin RepoPreviewMixin {
  late String id;
  late String fullName;
  String? platformUrl;
  @JsonKey(unknownEnumValue: PlatformType.artemisUnknown)
  late PlatformType platform;
  String? descriptionLimited;
  @JsonKey(unknownEnumValue: ScriptDirection.artemisUnknown)
  late ScriptDirection descriptionDirection;
  late int stargazersCount;
  late int forksCount;
  late int openIssuesCount;
  RepoPreviewMixin$Language? language;
  late bool isNew;
  RepoPreviewMixin$Owner? owner;
}
mixin RepoPreviewWithoutOwnerMixin {
  late String id;
  late String fullName;
  String? platformUrl;
  @JsonKey(unknownEnumValue: PlatformType.artemisUnknown)
  late PlatformType platform;
  String? descriptionLimited;
  @JsonKey(unknownEnumValue: ScriptDirection.artemisUnknown)
  late ScriptDirection descriptionDirection;
  late int stargazersCount;
  late int forksCount;
  late int openIssuesCount;
  RepoPreviewWithoutOwnerMixin$Language? language;
  late bool isNew;
}
mixin FullRepoMixin {
  late String id;
  late String fullName;
  late String name;
  String? platformUrl;
  @JsonKey(unknownEnumValue: PlatformType.artemisUnknown)
  late PlatformType platform;
  String? descriptionLimited;
  @JsonKey(unknownEnumValue: ScriptDirection.artemisUnknown)
  late ScriptDirection descriptionDirection;
  late bool archived;
  late bool isTemplate;
  late String defaultBranch;
  late FullRepoMixin$PushedAt pushedAt;
  late FullRepoMixin$CreatedAt createdAt;
  String? homePage;
  late int stargazersCount;
  late int forksCount;
  late int openIssuesCount;
  String? readmeHtml;
  FullRepoMixin$Language? language;
  FullRepoMixin$License? license;
  FullRepoMixin$Owner? owner;
}

@JsonSerializable(explicitToJson: true)
class Report$Mutation$Report extends JsonSerializable with EquatableMixin {
  Report$Mutation$Report();

  factory Report$Mutation$Report.fromJson(Map<String, dynamic> json) =>
      _$Report$Mutation$ReportFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$Report$Mutation$ReportToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Report$Mutation extends JsonSerializable with EquatableMixin {
  Report$Mutation();

  factory Report$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Report$MutationFromJson(json);

  late Report$Mutation$Report report;

  @override
  List<Object?> get props => [report];
  @override
  Map<String, dynamic> toJson() => _$Report$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SendSubmission$Mutation$SendSubmission$Submission extends JsonSerializable
    with EquatableMixin {
  SendSubmission$Mutation$SendSubmission$Submission();

  factory SendSubmission$Mutation$SendSubmission$Submission.fromJson(
          Map<String, dynamic> json) =>
      _$SendSubmission$Mutation$SendSubmission$SubmissionFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$SendSubmission$Mutation$SendSubmission$SubmissionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SendSubmission$Mutation$SendSubmission$UserErrors extends JsonSerializable
    with EquatableMixin {
  SendSubmission$Mutation$SendSubmission$UserErrors();

  factory SendSubmission$Mutation$SendSubmission$UserErrors.fromJson(
          Map<String, dynamic> json) =>
      _$SendSubmission$Mutation$SendSubmission$UserErrorsFromJson(json);

  late String message;

  @override
  List<Object?> get props => [message];
  @override
  Map<String, dynamic> toJson() =>
      _$SendSubmission$Mutation$SendSubmission$UserErrorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SendSubmission$Mutation$SendSubmission extends JsonSerializable
    with EquatableMixin {
  SendSubmission$Mutation$SendSubmission();

  factory SendSubmission$Mutation$SendSubmission.fromJson(
          Map<String, dynamic> json) =>
      _$SendSubmission$Mutation$SendSubmissionFromJson(json);

  SendSubmission$Mutation$SendSubmission$Submission? submission;

  List<SendSubmission$Mutation$SendSubmission$UserErrors>? userErrors;

  @override
  List<Object?> get props => [submission, userErrors];
  @override
  Map<String, dynamic> toJson() =>
      _$SendSubmission$Mutation$SendSubmissionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SendSubmission$Mutation extends JsonSerializable with EquatableMixin {
  SendSubmission$Mutation();

  factory SendSubmission$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SendSubmission$MutationFromJson(json);

  late SendSubmission$Mutation$SendSubmission sendSubmission;

  @override
  List<Object?> get props => [sendSubmission];
  @override
  Map<String, dynamic> toJson() => _$SendSubmission$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSearchedRepositories$Query$Repositories$Edges$Node
    extends JsonSerializable with EquatableMixin {
  GetSearchedRepositories$Query$Repositories$Edges$Node();

  factory GetSearchedRepositories$Query$Repositories$Edges$Node.fromJson(
          Map<String, dynamic> json) =>
      _$GetSearchedRepositories$Query$Repositories$Edges$NodeFromJson(json);

  late String id;

  late String fullName;

  String? platformUrl;

  @JsonKey(unknownEnumValue: PlatformType.artemisUnknown)
  late PlatformType platform;

  String? descriptionLimited;

  @override
  List<Object?> get props =>
      [id, fullName, platformUrl, platform, descriptionLimited];
  @override
  Map<String, dynamic> toJson() =>
      _$GetSearchedRepositories$Query$Repositories$Edges$NodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSearchedRepositories$Query$Repositories$Edges extends JsonSerializable
    with EquatableMixin {
  GetSearchedRepositories$Query$Repositories$Edges();

  factory GetSearchedRepositories$Query$Repositories$Edges.fromJson(
          Map<String, dynamic> json) =>
      _$GetSearchedRepositories$Query$Repositories$EdgesFromJson(json);

  late GetSearchedRepositories$Query$Repositories$Edges$Node node;

  @override
  List<Object?> get props => [node];
  @override
  Map<String, dynamic> toJson() =>
      _$GetSearchedRepositories$Query$Repositories$EdgesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSearchedRepositories$Query$Repositories extends JsonSerializable
    with EquatableMixin {
  GetSearchedRepositories$Query$Repositories();

  factory GetSearchedRepositories$Query$Repositories.fromJson(
          Map<String, dynamic> json) =>
      _$GetSearchedRepositories$Query$RepositoriesFromJson(json);

  List<GetSearchedRepositories$Query$Repositories$Edges>? edges;

  @override
  List<Object?> get props => [edges];
  @override
  Map<String, dynamic> toJson() =>
      _$GetSearchedRepositories$Query$RepositoriesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSearchedRepositories$Query extends JsonSerializable
    with EquatableMixin {
  GetSearchedRepositories$Query();

  factory GetSearchedRepositories$Query.fromJson(Map<String, dynamic> json) =>
      _$GetSearchedRepositories$QueryFromJson(json);

  late GetSearchedRepositories$Query$Repositories repositories;

  @override
  List<Object?> get props => [repositories];
  @override
  Map<String, dynamic> toJson() => _$GetSearchedRepositories$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRepositories$Query$Repositories$Edges$Node extends JsonSerializable
    with EquatableMixin, RepoPreviewMixin {
  GetRepositories$Query$Repositories$Edges$Node();

  factory GetRepositories$Query$Repositories$Edges$Node.fromJson(
          Map<String, dynamic> json) =>
      _$GetRepositories$Query$Repositories$Edges$NodeFromJson(json);

  @override
  List<Object?> get props => [
        id,
        fullName,
        platformUrl,
        platform,
        descriptionLimited,
        descriptionDirection,
        stargazersCount,
        forksCount,
        openIssuesCount,
        language,
        isNew,
        owner
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRepositories$Query$Repositories$Edges$NodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRepositories$Query$Repositories$Edges extends JsonSerializable
    with EquatableMixin {
  GetRepositories$Query$Repositories$Edges();

  factory GetRepositories$Query$Repositories$Edges.fromJson(
          Map<String, dynamic> json) =>
      _$GetRepositories$Query$Repositories$EdgesFromJson(json);

  late GetRepositories$Query$Repositories$Edges$Node node;

  @override
  List<Object?> get props => [node];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRepositories$Query$Repositories$EdgesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRepositories$Query$Repositories$PageInfo extends JsonSerializable
    with EquatableMixin {
  GetRepositories$Query$Repositories$PageInfo();

  factory GetRepositories$Query$Repositories$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetRepositories$Query$Repositories$PageInfoFromJson(json);

  late bool hasNextPage;

  String? endCursor;

  @override
  List<Object?> get props => [hasNextPage, endCursor];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRepositories$Query$Repositories$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRepositories$Query$Repositories extends JsonSerializable
    with EquatableMixin {
  GetRepositories$Query$Repositories();

  factory GetRepositories$Query$Repositories.fromJson(
          Map<String, dynamic> json) =>
      _$GetRepositories$Query$RepositoriesFromJson(json);

  List<GetRepositories$Query$Repositories$Edges>? edges;

  late GetRepositories$Query$Repositories$PageInfo pageInfo;

  @override
  List<Object?> get props => [edges, pageInfo];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRepositories$Query$RepositoriesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRepositories$Query extends JsonSerializable with EquatableMixin {
  GetRepositories$Query();

  factory GetRepositories$Query.fromJson(Map<String, dynamic> json) =>
      _$GetRepositories$QueryFromJson(json);

  late GetRepositories$Query$Repositories repositories;

  @override
  List<Object?> get props => [repositories];
  @override
  Map<String, dynamic> toJson() => _$GetRepositories$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoPreviewMixin$Language$Color$Rgba extends JsonSerializable
    with EquatableMixin {
  RepoPreviewMixin$Language$Color$Rgba();

  factory RepoPreviewMixin$Language$Color$Rgba.fromJson(
          Map<String, dynamic> json) =>
      _$RepoPreviewMixin$Language$Color$RgbaFromJson(json);

  late int red;

  late int green;

  late int blue;

  @override
  List<Object?> get props => [red, green, blue];
  @override
  Map<String, dynamic> toJson() =>
      _$RepoPreviewMixin$Language$Color$RgbaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoPreviewMixin$Language$Color extends JsonSerializable
    with EquatableMixin {
  RepoPreviewMixin$Language$Color();

  factory RepoPreviewMixin$Language$Color.fromJson(Map<String, dynamic> json) =>
      _$RepoPreviewMixin$Language$ColorFromJson(json);

  late RepoPreviewMixin$Language$Color$Rgba rgba;

  @override
  List<Object?> get props => [rgba];
  @override
  Map<String, dynamic> toJson() =>
      _$RepoPreviewMixin$Language$ColorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoPreviewMixin$Language extends JsonSerializable with EquatableMixin {
  RepoPreviewMixin$Language();

  factory RepoPreviewMixin$Language.fromJson(Map<String, dynamic> json) =>
      _$RepoPreviewMixin$LanguageFromJson(json);

  late String name;

  RepoPreviewMixin$Language$Color? color;

  @override
  List<Object?> get props => [name, color];
  @override
  Map<String, dynamic> toJson() => _$RepoPreviewMixin$LanguageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoPreviewMixin$Owner extends JsonSerializable with EquatableMixin {
  RepoPreviewMixin$Owner();

  factory RepoPreviewMixin$Owner.fromJson(Map<String, dynamic> json) =>
      _$RepoPreviewMixin$OwnerFromJson(json);

  @JsonKey(unknownEnumValue: OwnerType.artemisUnknown)
  late OwnerType type;

  late String login;

  late String platformId;

  @override
  List<Object?> get props => [type, login, platformId];
  @override
  Map<String, dynamic> toJson() => _$RepoPreviewMixin$OwnerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$OwnerByPlatform$Repositories$Edges$Node
    extends JsonSerializable with EquatableMixin, RepoPreviewWithoutOwnerMixin {
  GetOwner$Query$OwnerByPlatform$Repositories$Edges$Node();

  factory GetOwner$Query$OwnerByPlatform$Repositories$Edges$Node.fromJson(
          Map<String, dynamic> json) =>
      _$GetOwner$Query$OwnerByPlatform$Repositories$Edges$NodeFromJson(json);

  @override
  List<Object?> get props => [
        id,
        fullName,
        platformUrl,
        platform,
        descriptionLimited,
        descriptionDirection,
        stargazersCount,
        forksCount,
        openIssuesCount,
        language,
        isNew
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOwner$Query$OwnerByPlatform$Repositories$Edges$NodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$OwnerByPlatform$Repositories$Edges extends JsonSerializable
    with EquatableMixin {
  GetOwner$Query$OwnerByPlatform$Repositories$Edges();

  factory GetOwner$Query$OwnerByPlatform$Repositories$Edges.fromJson(
          Map<String, dynamic> json) =>
      _$GetOwner$Query$OwnerByPlatform$Repositories$EdgesFromJson(json);

  late String cursor;

  late GetOwner$Query$OwnerByPlatform$Repositories$Edges$Node node;

  @override
  List<Object?> get props => [cursor, node];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOwner$Query$OwnerByPlatform$Repositories$EdgesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$OwnerByPlatform$Repositories$PageInfo
    extends JsonSerializable with EquatableMixin {
  GetOwner$Query$OwnerByPlatform$Repositories$PageInfo();

  factory GetOwner$Query$OwnerByPlatform$Repositories$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetOwner$Query$OwnerByPlatform$Repositories$PageInfoFromJson(json);

  late bool hasNextPage;

  String? endCursor;

  @override
  List<Object?> get props => [hasNextPage, endCursor];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOwner$Query$OwnerByPlatform$Repositories$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$OwnerByPlatform$Repositories extends JsonSerializable
    with EquatableMixin {
  GetOwner$Query$OwnerByPlatform$Repositories();

  factory GetOwner$Query$OwnerByPlatform$Repositories.fromJson(
          Map<String, dynamic> json) =>
      _$GetOwner$Query$OwnerByPlatform$RepositoriesFromJson(json);

  List<GetOwner$Query$OwnerByPlatform$Repositories$Edges>? edges;

  late GetOwner$Query$OwnerByPlatform$Repositories$PageInfo pageInfo;

  @override
  List<Object?> get props => [edges, pageInfo];
  @override
  Map<String, dynamic> toJson() =>
      _$GetOwner$Query$OwnerByPlatform$RepositoriesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query$OwnerByPlatform extends JsonSerializable
    with EquatableMixin {
  GetOwner$Query$OwnerByPlatform();

  factory GetOwner$Query$OwnerByPlatform.fromJson(Map<String, dynamic> json) =>
      _$GetOwner$Query$OwnerByPlatformFromJson(json);

  late GetOwner$Query$OwnerByPlatform$Repositories repositories;

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
  Map<String, dynamic> toJson() => _$GetOwner$Query$OwnerByPlatformToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetOwner$Query extends JsonSerializable with EquatableMixin {
  GetOwner$Query();

  factory GetOwner$Query.fromJson(Map<String, dynamic> json) =>
      _$GetOwner$QueryFromJson(json);

  GetOwner$Query$OwnerByPlatform? ownerByPlatform;

  @override
  List<Object?> get props => [ownerByPlatform];
  @override
  Map<String, dynamic> toJson() => _$GetOwner$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoPreviewWithoutOwnerMixin$Language$Color$Rgba extends JsonSerializable
    with EquatableMixin {
  RepoPreviewWithoutOwnerMixin$Language$Color$Rgba();

  factory RepoPreviewWithoutOwnerMixin$Language$Color$Rgba.fromJson(
          Map<String, dynamic> json) =>
      _$RepoPreviewWithoutOwnerMixin$Language$Color$RgbaFromJson(json);

  late int red;

  late int green;

  late int blue;

  @override
  List<Object?> get props => [red, green, blue];
  @override
  Map<String, dynamic> toJson() =>
      _$RepoPreviewWithoutOwnerMixin$Language$Color$RgbaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoPreviewWithoutOwnerMixin$Language$Color extends JsonSerializable
    with EquatableMixin {
  RepoPreviewWithoutOwnerMixin$Language$Color();

  factory RepoPreviewWithoutOwnerMixin$Language$Color.fromJson(
          Map<String, dynamic> json) =>
      _$RepoPreviewWithoutOwnerMixin$Language$ColorFromJson(json);

  late RepoPreviewWithoutOwnerMixin$Language$Color$Rgba rgba;

  @override
  List<Object?> get props => [rgba];
  @override
  Map<String, dynamic> toJson() =>
      _$RepoPreviewWithoutOwnerMixin$Language$ColorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoPreviewWithoutOwnerMixin$Language extends JsonSerializable
    with EquatableMixin {
  RepoPreviewWithoutOwnerMixin$Language();

  factory RepoPreviewWithoutOwnerMixin$Language.fromJson(
          Map<String, dynamic> json) =>
      _$RepoPreviewWithoutOwnerMixin$LanguageFromJson(json);

  late String name;

  RepoPreviewWithoutOwnerMixin$Language$Color? color;

  @override
  List<Object?> get props => [name, color];
  @override
  Map<String, dynamic> toJson() =>
      _$RepoPreviewWithoutOwnerMixin$LanguageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges$Node
    extends JsonSerializable with EquatableMixin, RepoPreviewMixin {
  GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges$Node();

  factory GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges$Node.fromJson(
          Map<String, dynamic> json) =>
      _$GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges$NodeFromJson(
          json);

  @override
  List<Object?> get props => [
        id,
        fullName,
        platformUrl,
        platform,
        descriptionLimited,
        descriptionDirection,
        stargazersCount,
        forksCount,
        openIssuesCount,
        language,
        isNew,
        owner
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges$NodeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges
    extends JsonSerializable with EquatableMixin {
  GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges();

  factory GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges.fromJson(
          Map<String, dynamic> json) =>
      _$GetRepository$Query$RepositoryByPlatform$RelatedRepos$EdgesFromJson(
          json);

  late GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges$Node node;

  @override
  List<Object?> get props => [node];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRepository$Query$RepositoryByPlatform$RelatedRepos$EdgesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRepository$Query$RepositoryByPlatform$RelatedRepos$PageInfo
    extends JsonSerializable with EquatableMixin {
  GetRepository$Query$RepositoryByPlatform$RelatedRepos$PageInfo();

  factory GetRepository$Query$RepositoryByPlatform$RelatedRepos$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetRepository$Query$RepositoryByPlatform$RelatedRepos$PageInfoFromJson(
          json);

  late bool hasNextPage;

  String? endCursor;

  @override
  List<Object?> get props => [hasNextPage, endCursor];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRepository$Query$RepositoryByPlatform$RelatedRepos$PageInfoToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetRepository$Query$RepositoryByPlatform$RelatedRepos
    extends JsonSerializable with EquatableMixin {
  GetRepository$Query$RepositoryByPlatform$RelatedRepos();

  factory GetRepository$Query$RepositoryByPlatform$RelatedRepos.fromJson(
          Map<String, dynamic> json) =>
      _$GetRepository$Query$RepositoryByPlatform$RelatedReposFromJson(json);

  List<GetRepository$Query$RepositoryByPlatform$RelatedRepos$Edges>? edges;

  late GetRepository$Query$RepositoryByPlatform$RelatedRepos$PageInfo pageInfo;

  @override
  List<Object?> get props => [edges, pageInfo];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRepository$Query$RepositoryByPlatform$RelatedReposToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRepository$Query$RepositoryByPlatform extends JsonSerializable
    with EquatableMixin, FullRepoMixin {
  GetRepository$Query$RepositoryByPlatform();

  factory GetRepository$Query$RepositoryByPlatform.fromJson(
          Map<String, dynamic> json) =>
      _$GetRepository$Query$RepositoryByPlatformFromJson(json);

  late GetRepository$Query$RepositoryByPlatform$RelatedRepos relatedRepos;

  @override
  List<Object?> get props => [
        id,
        fullName,
        name,
        platformUrl,
        platform,
        descriptionLimited,
        descriptionDirection,
        archived,
        isTemplate,
        defaultBranch,
        pushedAt,
        createdAt,
        homePage,
        stargazersCount,
        forksCount,
        openIssuesCount,
        readmeHtml,
        language,
        license,
        owner,
        relatedRepos
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetRepository$Query$RepositoryByPlatformToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetRepository$Query extends JsonSerializable with EquatableMixin {
  GetRepository$Query();

  factory GetRepository$Query.fromJson(Map<String, dynamic> json) =>
      _$GetRepository$QueryFromJson(json);

  GetRepository$Query$RepositoryByPlatform? repositoryByPlatform;

  @override
  List<Object?> get props => [repositoryByPlatform];
  @override
  Map<String, dynamic> toJson() => _$GetRepository$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FullRepoMixin$PushedAt extends JsonSerializable with EquatableMixin {
  FullRepoMixin$PushedAt();

  factory FullRepoMixin$PushedAt.fromJson(Map<String, dynamic> json) =>
      _$FullRepoMixin$PushedAtFromJson(json);

  late String difference;

  @override
  List<Object?> get props => [difference];
  @override
  Map<String, dynamic> toJson() => _$FullRepoMixin$PushedAtToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FullRepoMixin$CreatedAt extends JsonSerializable with EquatableMixin {
  FullRepoMixin$CreatedAt();

  factory FullRepoMixin$CreatedAt.fromJson(Map<String, dynamic> json) =>
      _$FullRepoMixin$CreatedAtFromJson(json);

  late String formatted;

  @override
  List<Object?> get props => [formatted];
  @override
  Map<String, dynamic> toJson() => _$FullRepoMixin$CreatedAtToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FullRepoMixin$Language$Color$Rgba extends JsonSerializable
    with EquatableMixin {
  FullRepoMixin$Language$Color$Rgba();

  factory FullRepoMixin$Language$Color$Rgba.fromJson(
          Map<String, dynamic> json) =>
      _$FullRepoMixin$Language$Color$RgbaFromJson(json);

  late int red;

  late int green;

  late int blue;

  @override
  List<Object?> get props => [red, green, blue];
  @override
  Map<String, dynamic> toJson() =>
      _$FullRepoMixin$Language$Color$RgbaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FullRepoMixin$Language$Color extends JsonSerializable
    with EquatableMixin {
  FullRepoMixin$Language$Color();

  factory FullRepoMixin$Language$Color.fromJson(Map<String, dynamic> json) =>
      _$FullRepoMixin$Language$ColorFromJson(json);

  late FullRepoMixin$Language$Color$Rgba rgba;

  @override
  List<Object?> get props => [rgba];
  @override
  Map<String, dynamic> toJson() => _$FullRepoMixin$Language$ColorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FullRepoMixin$Language extends JsonSerializable with EquatableMixin {
  FullRepoMixin$Language();

  factory FullRepoMixin$Language.fromJson(Map<String, dynamic> json) =>
      _$FullRepoMixin$LanguageFromJson(json);

  late String name;

  FullRepoMixin$Language$Color? color;

  @override
  List<Object?> get props => [name, color];
  @override
  Map<String, dynamic> toJson() => _$FullRepoMixin$LanguageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FullRepoMixin$License extends JsonSerializable with EquatableMixin {
  FullRepoMixin$License();

  factory FullRepoMixin$License.fromJson(Map<String, dynamic> json) =>
      _$FullRepoMixin$LicenseFromJson(json);

  late String name;

  late String key;

  late String spdxId;

  @override
  List<Object?> get props => [name, key, spdxId];
  @override
  Map<String, dynamic> toJson() => _$FullRepoMixin$LicenseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FullRepoMixin$Owner extends JsonSerializable with EquatableMixin {
  FullRepoMixin$Owner();

  factory FullRepoMixin$Owner.fromJson(Map<String, dynamic> json) =>
      _$FullRepoMixin$OwnerFromJson(json);

  @JsonKey(unknownEnumValue: OwnerType.artemisUnknown)
  late OwnerType type;

  late String login;

  late String platformId;

  @override
  List<Object?> get props => [type, login, platformId];
  @override
  Map<String, dynamic> toJson() => _$FullRepoMixin$OwnerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetLanguages$Query$Languages$Edges$Node extends JsonSerializable
    with EquatableMixin {
  GetLanguages$Query$Languages$Edges$Node();

  factory GetLanguages$Query$Languages$Edges$Node.fromJson(
          Map<String, dynamic> json) =>
      _$GetLanguages$Query$Languages$Edges$NodeFromJson(json);

  late String id;

  late String name;

  late String slug;

  late int repositoriesCount;

  @override
  List<Object?> get props => [id, name, slug, repositoriesCount];
  @override
  Map<String, dynamic> toJson() =>
      _$GetLanguages$Query$Languages$Edges$NodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetLanguages$Query$Languages$Edges extends JsonSerializable
    with EquatableMixin {
  GetLanguages$Query$Languages$Edges();

  factory GetLanguages$Query$Languages$Edges.fromJson(
          Map<String, dynamic> json) =>
      _$GetLanguages$Query$Languages$EdgesFromJson(json);

  late GetLanguages$Query$Languages$Edges$Node node;

  @override
  List<Object?> get props => [node];
  @override
  Map<String, dynamic> toJson() =>
      _$GetLanguages$Query$Languages$EdgesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetLanguages$Query$Languages extends JsonSerializable
    with EquatableMixin {
  GetLanguages$Query$Languages();

  factory GetLanguages$Query$Languages.fromJson(Map<String, dynamic> json) =>
      _$GetLanguages$Query$LanguagesFromJson(json);

  List<GetLanguages$Query$Languages$Edges>? edges;

  @override
  List<Object?> get props => [edges];
  @override
  Map<String, dynamic> toJson() => _$GetLanguages$Query$LanguagesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetLanguages$Query extends JsonSerializable with EquatableMixin {
  GetLanguages$Query();

  factory GetLanguages$Query.fromJson(Map<String, dynamic> json) =>
      _$GetLanguages$QueryFromJson(json);

  late GetLanguages$Query$Languages languages;

  @override
  List<Object?> get props => [languages];
  @override
  Map<String, dynamic> toJson() => _$GetLanguages$QueryToJson(this);
}

enum ReportableType {
  @JsonValue('Owner')
  owner,
  @JsonValue('Repository')
  repository,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
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
enum ScriptDirection {
  @JsonValue('LTR')
  ltr,
  @JsonValue('RTL')
  rtl,
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
enum RepoOrder {
  @JsonValue('CREATED_ASC')
  createdAsc,
  @JsonValue('CREATED_DESC')
  createdDesc,
  @JsonValue('PUSHED_ASC')
  pushedAsc,
  @JsonValue('PUSHED_DESC')
  pushedDesc,
  @JsonValue('STARS_DESC')
  starsDesc,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum ForkStatusType {
  @JsonValue('ALL')
  all,
  @JsonValue('FORK')
  fork,
  @JsonValue('SOURCE')
  source,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}
enum TemplateStatusType {
  @JsonValue('ALL')
  all,
  @JsonValue('NOT_TEMPLATE')
  notTemplate,
  @JsonValue('TEMPLATE')
  template,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class ReportArguments extends JsonSerializable with EquatableMixin {
  ReportArguments(
      {required this.subject, required this.id, required this.reason});

  @override
  factory ReportArguments.fromJson(Map<String, dynamic> json) =>
      _$ReportArgumentsFromJson(json);

  @JsonKey(unknownEnumValue: ReportableType.artemisUnknown)
  late ReportableType subject;

  late String id;

  late String reason;

  @override
  List<Object?> get props => [subject, id, reason];
  @override
  Map<String, dynamic> toJson() => _$ReportArgumentsToJson(this);
}

final REPORT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'Report'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'subject')),
            type: NamedTypeNode(
                name: NameNode(value: 'ReportableType'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'reason')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'report'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'subject'),
                  value: VariableNode(name: NameNode(value: 'subject'))),
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id'))),
              ArgumentNode(
                  name: NameNode(value: 'reason'),
                  value: VariableNode(name: NameNode(value: 'reason')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class ReportMutation extends GraphQLQuery<Report$Mutation, ReportArguments> {
  ReportMutation({required this.variables});

  @override
  final DocumentNode document = REPORT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'Report';

  @override
  final ReportArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Report$Mutation parse(Map<String, dynamic> json) =>
      Report$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SendSubmissionArguments extends JsonSerializable with EquatableMixin {
  SendSubmissionArguments({required this.username, required this.platform});

  @override
  factory SendSubmissionArguments.fromJson(Map<String, dynamic> json) =>
      _$SendSubmissionArgumentsFromJson(json);

  late String username;

  @JsonKey(unknownEnumValue: PlatformType.artemisUnknown)
  late PlatformType platform;

  @override
  List<Object?> get props => [username, platform];
  @override
  Map<String, dynamic> toJson() => _$SendSubmissionArgumentsToJson(this);
}

final SEND_SUBMISSION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SendSubmission'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'username')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'platform')),
            type: NamedTypeNode(
                name: NameNode(value: 'PlatformType'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'sendSubmission'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'username'),
                  value: VariableNode(name: NameNode(value: 'username'))),
              ArgumentNode(
                  name: NameNode(value: 'platform'),
                  value: VariableNode(name: NameNode(value: 'platform')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'submission'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'userErrors'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class SendSubmissionMutation
    extends GraphQLQuery<SendSubmission$Mutation, SendSubmissionArguments> {
  SendSubmissionMutation({required this.variables});

  @override
  final DocumentNode document = SEND_SUBMISSION_MUTATION_DOCUMENT;

  @override
  final String operationName = 'SendSubmission';

  @override
  final SendSubmissionArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  SendSubmission$Mutation parse(Map<String, dynamic> json) =>
      SendSubmission$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetSearchedRepositoriesArguments extends JsonSerializable
    with EquatableMixin {
  GetSearchedRepositoriesArguments({this.first, this.searchTerm});

  @override
  factory GetSearchedRepositoriesArguments.fromJson(
          Map<String, dynamic> json) =>
      _$GetSearchedRepositoriesArgumentsFromJson(json);

  final int? first;

  final String? searchTerm;

  @override
  List<Object?> get props => [first, searchTerm];
  @override
  Map<String, dynamic> toJson() =>
      _$GetSearchedRepositoriesArgumentsToJson(this);
}

final GET_SEARCHED_REPOSITORIES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSearchedRepositories'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '5')),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'searchTerm')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'repositories'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first'))),
              ArgumentNode(
                  name: NameNode(value: 'searchTerm'),
                  value: VariableNode(name: NameNode(value: 'searchTerm')))
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
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class GetSearchedRepositoriesQuery extends GraphQLQuery<
    GetSearchedRepositories$Query, GetSearchedRepositoriesArguments> {
  GetSearchedRepositoriesQuery({required this.variables});

  @override
  final DocumentNode document = GET_SEARCHED_REPOSITORIES_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetSearchedRepositories';

  @override
  final GetSearchedRepositoriesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetSearchedRepositories$Query parse(Map<String, dynamic> json) =>
      GetSearchedRepositories$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetRepositoriesArguments extends JsonSerializable with EquatableMixin {
  GetRepositoriesArguments(
      {this.first,
      this.after,
      this.searchTerm,
      this.languages,
      this.order,
      this.forkStatus,
      this.templateStatus});

  @override
  factory GetRepositoriesArguments.fromJson(Map<String, dynamic> json) =>
      _$GetRepositoriesArgumentsFromJson(json);

  final int? first;

  final String? after;

  final String? searchTerm;

  final List<String>? languages;

  @JsonKey(unknownEnumValue: RepoOrder.artemisUnknown)
  final RepoOrder? order;

  @JsonKey(unknownEnumValue: ForkStatusType.artemisUnknown)
  final ForkStatusType? forkStatus;

  @JsonKey(unknownEnumValue: TemplateStatusType.artemisUnknown)
  final TemplateStatusType? templateStatus;

  @override
  List<Object?> get props =>
      [first, after, searchTerm, languages, order, forkStatus, templateStatus];
  @override
  Map<String, dynamic> toJson() => _$GetRepositoriesArgumentsToJson(this);
}

final GET_REPOSITORIES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetRepositories'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '12')),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'searchTerm')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'languages')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: true),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'order')),
            type: NamedTypeNode(
                name: NameNode(value: 'RepoOrder'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'forkStatus')),
            type: NamedTypeNode(
                name: NameNode(value: 'ForkStatusType'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'templateStatus')),
            type: NamedTypeNode(
                name: NameNode(value: 'TemplateStatusType'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'repositories'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: VariableNode(name: NameNode(value: 'first'))),
              ArgumentNode(
                  name: NameNode(value: 'after'),
                  value: VariableNode(name: NameNode(value: 'after'))),
              ArgumentNode(
                  name: NameNode(value: 'searchTerm'),
                  value: VariableNode(name: NameNode(value: 'searchTerm'))),
              ArgumentNode(
                  name: NameNode(value: 'languages'),
                  value: VariableNode(name: NameNode(value: 'languages'))),
              ArgumentNode(
                  name: NameNode(value: 'order'),
                  value: VariableNode(name: NameNode(value: 'order'))),
              ArgumentNode(
                  name: NameNode(value: 'forkStatus'),
                  value: VariableNode(name: NameNode(value: 'forkStatus'))),
              ArgumentNode(
                  name: NameNode(value: 'templateStatus'),
                  value: VariableNode(name: NameNode(value: 'templateStatus')))
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
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'repoPreview'),
                              directives: [])
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
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'repoPreview'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Repository'), isNonNull: false)),
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
            name: NameNode(value: 'descriptionDirection'),
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
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'rgba'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'red'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'green'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'blue'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'isNew'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                  selectionSet: null)
            ]))
      ]))
]);

class GetRepositoriesQuery
    extends GraphQLQuery<GetRepositories$Query, GetRepositoriesArguments> {
  GetRepositoriesQuery({required this.variables});

  @override
  final DocumentNode document = GET_REPOSITORIES_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetRepositories';

  @override
  final GetRepositoriesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetRepositories$Query parse(Map<String, dynamic> json) =>
      GetRepositories$Query.fromJson(json);
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
                                FragmentSpreadNode(
                                    name: NameNode(
                                        value: 'repoPreviewWithoutOwner'),
                                    directives: [])
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
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'repoPreviewWithoutOwner'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Repository'), isNonNull: false)),
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
            name: NameNode(value: 'descriptionDirection'),
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
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'rgba'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'red'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'green'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'blue'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'isNew'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
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

@JsonSerializable(explicitToJson: true)
class GetRepositoryArguments extends JsonSerializable with EquatableMixin {
  GetRepositoryArguments(
      {required this.owner,
      required this.repo,
      required this.platform,
      this.relatedReposFirst});

  @override
  factory GetRepositoryArguments.fromJson(Map<String, dynamic> json) =>
      _$GetRepositoryArgumentsFromJson(json);

  late String owner;

  late String repo;

  @JsonKey(unknownEnumValue: PlatformType.artemisUnknown)
  late PlatformType platform;

  final int? relatedReposFirst;

  @override
  List<Object?> get props => [owner, repo, platform, relatedReposFirst];
  @override
  Map<String, dynamic> toJson() => _$GetRepositoryArgumentsToJson(this);
}

final GET_REPOSITORY_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetRepository'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'owner')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'repo')),
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
            variable: VariableNode(name: NameNode(value: 'relatedReposFirst')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: IntValueNode(value: '8')),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'repositoryByPlatform'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'owner'),
                  value: VariableNode(name: NameNode(value: 'owner'))),
              ArgumentNode(
                  name: NameNode(value: 'repo'),
                  value: VariableNode(name: NameNode(value: 'repo'))),
              ArgumentNode(
                  name: NameNode(value: 'platform'),
                  value: VariableNode(name: NameNode(value: 'platform')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'fullRepo'), directives: []),
              FieldNode(
                  name: NameNode(value: 'relatedRepos'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'first'),
                        value: VariableNode(
                            name: NameNode(value: 'relatedReposFirst')))
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
                              name: NameNode(value: 'node'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FragmentSpreadNode(
                                    name: NameNode(value: 'repoPreview'),
                                    directives: [])
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
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'repoPreview'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Repository'), isNonNull: false)),
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
            name: NameNode(value: 'descriptionDirection'),
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
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'rgba'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'red'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'green'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'blue'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'isNew'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                  selectionSet: null)
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'fullRepo'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Repository'), isNonNull: false)),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'descriptionDirection'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'archived'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'isTemplate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'defaultBranch'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'pushedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'difference'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'persianNumbers'),
                        value: BooleanValueNode(value: true))
                  ],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'formatted'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'persianNumbers'),
                        value: BooleanValueNode(value: true))
                  ],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'homePage'),
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
            name: NameNode(value: 'readmeHtml'),
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
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'rgba'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'red'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'green'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'blue'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: 'license'),
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
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'spdxId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: 'owner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                  selectionSet: null)
            ]))
      ]))
]);

class GetRepositoryQuery
    extends GraphQLQuery<GetRepository$Query, GetRepositoryArguments> {
  GetRepositoryQuery({required this.variables});

  @override
  final DocumentNode document = GET_REPOSITORY_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetRepository';

  @override
  final GetRepositoryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetRepository$Query parse(Map<String, dynamic> json) =>
      GetRepository$Query.fromJson(json);
}

final GET_LANGUAGES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetLanguages'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'languages'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
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
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'slug'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'repositoriesCount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class GetLanguagesQuery
    extends GraphQLQuery<GetLanguages$Query, JsonSerializable> {
  GetLanguagesQuery();

  @override
  final DocumentNode document = GET_LANGUAGES_QUERY_DOCUMENT;

  @override
  final String operationName = 'GetLanguages';

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetLanguages$Query parse(Map<String, dynamic> json) =>
      GetLanguages$Query.fromJson(json);
}
