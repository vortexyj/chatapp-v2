import 'package:chatapp/constants.dart';
import 'package:chatapp/screens/Register.dart';
import 'package:chatapp/widgets/CustomButton.dart';
import 'package:chatapp/widgets/customtexfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Image.asset('assets/images/scholar.png'),
            Text('Scholar Chat',
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'Pacifico-Regular')),
            Spacer(
              flex: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'LOGIN',
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
            CustomButton(text: 'LOGIN'),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account ? ',
                    style: TextStyle(color: Colors.white)),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Color(0xffc7ede6)),
                  ),
                )
              ],
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
