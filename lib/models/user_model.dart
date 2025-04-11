class UserModel {
  String id;
  String name;
  String email;
  int followersCount;
  int followingCount;

  UserModel({required this.id, required this.name, required this.email, this.followersCount = 0, this.followingCount = 0});
}
