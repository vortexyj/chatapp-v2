import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
   CustomTextField({this.hintText}); 
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white,
                ),
                ),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.white)
                ),
          );
  }
}