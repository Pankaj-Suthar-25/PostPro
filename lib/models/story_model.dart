enum StoryStatus { published, draft, unlisted }

/// Represents a story in the application.
class StoryModel {
  /// The unique identifier of the story.
  late String id;

  /// The title of the story.
  late String title;

  /// The content of the story.
  late String content;

  /// The ID of the author who wrote the story.
  late String authorId;

  /// The ID of the publication the story belongs to.
  late String publicationId;

  /// The date and time the story was created.
  DateTime? createdAt;

  /// The list of topic IDs associated with the story.
  late List<String> topicIds;

  /// The number of applauses the story has received.
  late int applauseCount;

  /// The number of comments the story has received.
  late int commentCount;

  /// The number of dislikes the story has received.
  late int dislikeCount;

  /// The status of the story (published, draft, unlisted).
  late String status;

  /// Creates a new instance of the [StoryModel] class.
  StoryModel({
    required this.id,
    required this.title,
    required this.content,
    required this.authorId,
    required this.publicationId,
    required this.createdAt,
    required this.topicIds,
    required this.applauseCount,
    required this.commentCount,
    required this.dislikeCount,
    required this.status,
  });

  /// Converts the [StoryModel] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'authorId': authorId,
      'publicationId': publicationId,
      'createdAt': createdAt,
      'topicIds': topicIds,
      'applauseCount': applauseCount,
      'commentCount': commentCount,
      'dislikeCount': dislikeCount,
      'status': status,
    };
  }
}
