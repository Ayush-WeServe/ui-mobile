class AllFriends {
  int? id;
  String? name;
  String? picture;
  String? status;

  AllFriends({this.id, this.name, this.picture, this.status});

  AllFriends.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'picture': picture, 'status': status};
  }
}
