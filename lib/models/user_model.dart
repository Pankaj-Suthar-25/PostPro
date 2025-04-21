class UserModel {
  String id;
  String name;
  String email;
  int followersCount;
  int followingCount;
  String? profilePictureUrl;
  String? pronouns;
  String? shortBio;
  String? bio;

  UserModel({required this.id, required this.name, required this.email, this.followersCount = 0, this.followingCount = 0, this.profilePictureUrl, this.pronouns, this.shortBio, this.bio});

  UserModel copyWith({String? id, String? name, String? email, int? followersCount, int? followingCount, String? profilePictureUrl, String? pronouns, String? shortBio, String? bio}) {
    return UserModel(id: id ?? this.id, name: name ?? this.name, email: email ?? this.email, followersCount: followersCount ?? this.followersCount, followingCount: followingCount ?? this.followingCount, profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl, pronouns: pronouns ?? this.pronouns, shortBio: shortBio ?? this.shortBio, bio: bio ?? this.bio);
  }


}
