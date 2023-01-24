import 'package:chatapp/models/message.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ChatBubble extends StatelessWidget {
  ChatBubble({required this.msg});
  final Message msg;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          padding: EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                  bottomRight: Radius.circular(32))),
          child: Text(
            msg.message,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}

class ChatBubble2 extends StatelessWidget {
  ChatBubble2({required this.msg});
  final Message msg;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
          padding: EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32))),
          child: Text(
            msg.message,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
