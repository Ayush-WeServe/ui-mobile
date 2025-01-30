class Chatlog {
  String? text;
  String? timestamp;
  String? side;
  int? messageId;

  Chatlog({this.text, this.timestamp, this.side, this.messageId});

  Chatlog.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    timestamp = json['timestamp'];
    side = json['side'];
    messageId = json['message_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'timestamp': timestamp,
      'side': side,
      'message id': messageId
    };
  }
}
