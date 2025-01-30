import 'friends_model.dart';

class Profile {
  int? id;
  String? name;
  String? picture;
  String? status;
  List<Friends>? friends;

  Profile({this.id, this.name, this.picture, this.status, this.friends});

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
    status = json['status'];
    if (json['friends'] != null) {
      friends = <Friends>[];
      json['friends'].forEach((v) {
        friends!.add(new Friends.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'picture': picture,
      'status': status,
      'friends': friends
    };
  }
}
