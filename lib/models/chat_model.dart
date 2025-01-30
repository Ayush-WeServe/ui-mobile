import 'all_friends_model.dart';
import 'friends_model.dart';
import 'profile_model.dart';

class ChatModel {
  Profile? profile;
  List<Friends>? friends;
  List<AllFriends>? allFriends;

  ChatModel({this.profile, this.friends, this.allFriends});

  ChatModel.fromJson(Map<String, dynamic> json) {
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
    if (json['friends'] != null) {
      friends = <Friends>[];
      json['friends'].forEach((v) {
        friends!.add(new Friends.fromJson(v));
      });
    }
    if (json['allFriends'] != null) {
      allFriends = <AllFriends>[];
      json['allFriends'].forEach((v) {
        allFriends!.add(new AllFriends.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'profile': profile,
      'friends': friends,
      'allFriends': allFriends,
    };
  }
}
