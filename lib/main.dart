import 'package:chatapp/screens/Register.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/screens/login.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  @override
  const ChatApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
      },
      initialRoute: 'LoginPage',
    );
  }
}
