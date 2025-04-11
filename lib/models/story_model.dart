class StoryModel {
  String id;
  String title;
  String content;
  String authorId;
  String publicationId;
  DateTime createdAt;

  StoryModel({
    required this.id,
    required this.title,
    required this.content,
    required this.authorId,
    required this.publicationId,
    DateTime? createdAt, // Make this nullable
  }) : createdAt = createdAt ?? DateTime.now(); // Assign current time if null
}