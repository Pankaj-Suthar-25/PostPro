import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/topic_model.dart';

class TopicService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // In lib/services/topic_service.dart
  Future<List<TopicModel>> fetchTopics() async {
    QuerySnapshot snapshot = await _firestore.collection('topics').get();
    return snapshot.docs.map((doc) => TopicModel(
      id: doc.id,
      name: doc['name'],
      storyCount: doc['storyCount'],
    )).toList();
  }
}
