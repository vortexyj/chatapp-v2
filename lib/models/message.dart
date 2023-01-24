import 'package:chatapp/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Message {
  final String message;
  final String id;

  Message(this.message, this.id);

  factory Message.fromjson(jsonData) {
    return Message(jsonData[KeyMessage], jsonData['id']);
  }
}
