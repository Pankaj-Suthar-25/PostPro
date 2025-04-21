/// Represents a publication in the application.
class PublicationModel {
  /// The unique identifier of the publication.
  late String id;

  /// The name of the publication.
  late String name;

  /// The description of the publication.
  late String description;

  /// The URL of the publication's logo.
  String? logoUrl;

  /// The number of members in the publication.
  int memberCount;

  /// The number of stories in the publication.
  int storyCount;

  /// The ID of the owner of the publication.
  String? ownerId;

  /// Creates a new instance of the [PublicationModel] class.
  PublicationModel({
    required this.id,
    required this.name,
    required this.description,
    this.logoUrl,
    this.memberCount = 0,
    this.storyCount = 0,
    this.ownerId,
  });
}
