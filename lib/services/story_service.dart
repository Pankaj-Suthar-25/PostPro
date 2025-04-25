import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/story_model.dart';

class StoryService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<StoryModel>> fetchStories() async {
    QuerySnapshot snapshot = await _firestore.collection('stories').get();
    return snapshot.docs.map((doc) => StoryModel(
      id: doc.id,
      title: doc['title'] ?? '',
      content: doc['content'] ?? '',
      author: doc['author'] ?? 'Test Author',
      authorId: doc['authorId'] ?? '',
      publicationId: doc['publicationId'] ?? '',
      createdAt: (doc['createdAt'] as Timestamp?)?.toDate(),
      topicIds: List<String>.from(doc['topicIds'] ?? []),
      applauseCount: doc['applauseCount'] ?? 0,
      commentCount: doc['commentCount'] ?? 0,
      dislikeCount: doc['dislikeCount'] ?? 0,
      status: doc['status'] ?? 'published',
    )).toList();
  }

  Future<void> addStory(StoryModel story) async {
    final storyData = story.toJson();
    await _firestore.collection('stories').add(storyData);
  }

  Future<void> updateStory(StoryModel story) async {
    final storyData = story.toJson();
    await _firestore.collection('stories').doc(story.id).update(storyData);
  }

  Future<void> deleteStory(String storyId) async {
    await _firestore.collection('stories').doc(storyId).delete();
  }

  Future<List<StoryModel>> fetchStoriesByTopic(String topicId) async {
    QuerySnapshot snapshot = await _firestore.collection('stories')
        .where('topicIds', arrayContains: topicId)
        .get();
    return snapshot.docs.map((doc) => StoryModel(
      id: doc.id,
      title: doc['title'] ?? '',
      content: doc['content'] ?? '',
      author: doc['author'] ?? 'Test Author',
      authorId: doc['authorId'] ?? '',
      publicationId: doc['publicationId'] ?? '',
      createdAt: (doc['createdAt'] as Timestamp?)?.toDate(),
      topicIds: List<String>.from(doc['topicIds'] ?? []),
      applauseCount: doc['applauseCount'] ?? 0,
      commentCount: doc['commentCount'] ?? 0,
      dislikeCount: doc['dislikeCount'] ?? 0,
      status: doc['status'] ?? 'published',
    )).toList();
  }

  Future<List<StoryModel>> fetchStoriesByAuthor(String authorId) async {
    QuerySnapshot snapshot = await _firestore.collection('stories')
        .where('authorId', isEqualTo: authorId)
        .get();
    return snapshot.docs.map((doc) => StoryModel(
      id: doc.id,
      title: doc['title'] ?? '',
      content: doc['content'] ?? '',
      author: doc['author'] ?? 'Test Author',
      authorId: doc['authorId'] ?? '',
      publicationId: doc['publicationId'] ?? '',
      createdAt: (doc['createdAt'] as Timestamp?)?.toDate(),
      topicIds: List<String>.from(doc['topicIds'] ?? []),
      applauseCount: doc['applauseCount'] ?? 0,
      commentCount: doc['commentCount'] ?? 0,
      dislikeCount: doc['dislikeCount'] ?? 0,
      status: doc['status'] ?? 'published',
    )).toList();
  }

  Future<List<StoryModel>> fetchStoriesByPublication(String publicationId) async {
    QuerySnapshot snapshot = await _firestore.collection('stories')
        .where('publicationId', isEqualTo: publicationId)
        .get();
    return snapshot.docs.map((doc) => StoryModel(
      id: doc.id,
      title: doc['title'] ?? '',
      content: doc['content'] ?? '',
      author: doc['author'] ?? 'Test Author',
      authorId: doc['authorId'] ?? '',
      publicationId: doc['publicationId'] ?? '',
      createdAt: (doc['createdAt'] as Timestamp?)?.toDate(),
      topicIds: List<String>.from(doc['topicIds'] ?? []),
      applauseCount: doc['applauseCount'] ?? 0,
      commentCount: doc['commentCount'] ?? 0,
      dislikeCount: doc['dislikeCount'] ?? 0,
      status: doc['status'] ?? 'published',
    )).toList();
  }

  Future<List<StoryModel>> fetchBookmarkedStories() async {
    // Get the current user ID
    // Assuming you have a way to get the current user ID
    String userId = 'currentUserId'; // Replace with actual user ID

    // Fetch the bookmarked story IDs from the 'bookmarks' collection
    QuerySnapshot bookmarkSnapshot = await _firestore
        .collection('bookmarks')
        .where('userId', isEqualTo: userId)
        .get();

    List<String> bookmarkedStoryIds = bookmarkSnapshot.docs
        .map((doc) => doc['storyId'] as String)
        .toList();

    // Fetch the actual story documents from the 'stories' collection
    QuerySnapshot storySnapshot = await _firestore.collection('stories')
        .where(FieldPath.documentId, whereIn: bookmarkedStoryIds)
        .get();

    return storySnapshot.docs.map((doc) => StoryModel(
      id: doc.id,
      title: doc['title'] ?? '',
      content: doc['content'] ?? '',
      author: doc['author'] ?? 'Test Author',
      authorId: doc['authorId'] ?? '',
      publicationId: doc['publicationId'] ?? '',
      createdAt: (doc['createdAt'] as Timestamp?)?.toDate(),
      topicIds: List<String>.from(doc['topicIds'] ?? []),
      applauseCount: doc['applauseCount'] ?? 0,
      commentCount: doc['commentCount'] ?? 0,
      dislikeCount: doc['dislikeCount'] ?? 0,
      status: doc['status'] ?? 'published',
    )).toList();
  }

  Future<List<StoryModel>> fetchTrendingStories() async {
    QuerySnapshot snapshot = await _firestore.collection('stories').orderBy('createdAt', descending: true).limit(10).get();
    return snapshot.docs.map((doc) => StoryModel(
      id: doc.id,
      title: doc['title'] ?? '',
      content: doc['content'] ?? '',
      author: doc['author'] ?? 'Test Author',
      authorId: doc['authorId'] ?? '',
      publicationId: doc['publicationId'] ?? '',
      createdAt: (doc['createdAt'] as Timestamp?)?.toDate(),
      topicIds: List<String>.from(doc['topicIds'] ?? []),
      applauseCount: doc['applauseCount'] ?? 0,
      commentCount: doc['commentCount'] ?? 0,
      dislikeCount: doc['dislikeCount'] ?? 0,
      status: doc['status'] ?? 'published',
    )).toList();
  }
}
