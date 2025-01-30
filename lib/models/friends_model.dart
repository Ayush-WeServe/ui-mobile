import 'chatlog_model.dart';

class FriendsNew {
  int? id;
  String? name;
  String? picture;
  String? latestTimestamp;
  String? lastChat;

  FriendsNew(
      {this.id, this.name, this.picture, this.latestTimestamp, this.lastChat});

  FriendsNew.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    name = json['name'] ?? '';
    picture = json['picture'] ?? '';
    latestTimestamp = json['latest_timestamp'] ?? '';
    lastChat = json['lastChat'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'picture': picture,
      'latest_timestamp': latestTimestamp,
      'lastChat': lastChat,
    };
  }
}

class Friends {
  int? id;
  String? name;
  String? picture;
  List<Chatlog>? chatlog;

  Friends({this.id, this.name, this.picture, this.chatlog});

  Friends.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
    if (json['chatlog'] != null) {
      chatlog = <Chatlog>[];
      json['chatlog'].forEach((v) {
        chatlog!.add(new Chatlog.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'picture': picture, 'chatlog': chatlog};
  }
}
