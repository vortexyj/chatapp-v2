import 'package:chatapp/constants.dart';
import 'package:chatapp/models/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:chatapp/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widgets/chatbubble.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  static String id = 'ChatPage';
  final _controller = ScrollController();
  CollectionReference messages =
      FirebaseFirestore.instance.collection(KeyMessageCollection);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var Email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagelist = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagelist.add(Message.fromjson(snapshot.data!.docs[i]));
          }
          return Scaffold(
            appBar: AppBar(
                backgroundColor: kPrimaryColor,
                automaticallyImplyLeading: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      kLogo,
                      height: 50,
                    ),
                    Text('Chat'),
                  ],
                )),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    controller: _controller,
                    itemCount: messagelist.length,
                    itemBuilder: (context, index) {
                      return messagelist[index].id == Email
                          ? ChatBubble(
                              msg: messagelist[index],
                            )
                          : ChatBubble2(msg: messagelist[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller,
                    onSubmitted: ((data) {
                      messages.add(
                        {
                          KeyMessage: data,
                          kCreatedAt: DateTime.now(),
                          'id': Email,
                        },
                      );
                      controller.clear();
                      _controller.animateTo(0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    }),
                    decoration: InputDecoration(
                      hintText: 'Send Message',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                      suffixIcon: Icon(
                        Icons.send,
                        color: kPrimaryColor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
            body: Text('Loading...'),
          );
        }
      },
    );
  }
}
