import 'package:chatapp/constants.dart';
import 'package:chatapp/screens/login.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import '../widgets/CustomButton.dart';
import '../widgets/customtexfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = 'RegisterPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(
              height: 75,
            ),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Scholar Chat',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontFamily: 'Pacifico-Regular')),
              ],
            ),
            SizedBox(
              height: 75,
            ),
            Row(
              children: [
                Text(
                  'REGISTER',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'REGISTER',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account ? ',
                    style: TextStyle(color: Colors.white)),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Color(0xffc7ede6)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
