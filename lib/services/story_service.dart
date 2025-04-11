import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/story_model.dart';

class StoryService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<StoryModel>> fetchStories() async {
    QuerySnapshot snapshot = await _firestore.collection('stories').get();
    return snapshot.docs.map((doc) => StoryModel(id: doc.id, title: doc['title'], content: doc['content'], authorId: '', publicationId: '',)).toList();
  }

  Future<void> addStory(StoryModel story) async {
    await _firestore.collection('stories').add({
      'title': story.title,
      'content': story.content,
      'authorId': story.authorId,
      'publicationId': story.publicationId,
      'createdAt': story.createdAt,
    });
  }

  // In lib/services/story_service.dart
  Future<List<StoryModel>> fetchBookmarkedStories() async {
    // Assuming you have a way to get the current user's ID
    String currentUserId = 'currentUser Id'; // Replace with actual user ID
    QuerySnapshot snapshot = await _firestore
        .collection('bookmarks')
        .where('userId', isEqualTo: currentUserId)
        .get();
    return snapshot.docs.map((doc) => StoryModel(
      id: doc.id,
      title: doc['title'],
      content: doc['content'],
      authorId: doc['authorId'],
      publicationId: doc['publicationId'],
      createdAt: doc['createdAt'].toDate(),
    )).toList();
  }

  Future<List<StoryModel>> fetchTrendingStories() async {
    QuerySnapshot snapshot = await _firestore.collection('stories').orderBy('createdAt', descending: true).limit(10).get();
    return snapshot.docs.map((doc) => StoryModel(
      id: doc.id,
      title: doc['title'],
      content: doc['content'],
      authorId: doc['authorId'],
      publicationId: doc['publicationId'],
      createdAt: doc['createdAt'].toDate(),
    )).toList();
  }
}
