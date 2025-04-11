class ListModel {
  String id;
  String name;
  List<String> storyIds;
  bool isPrivate;

  ListModel({required this.id, required this.name, this.storyIds = const [], this.isPrivate = false});
}
