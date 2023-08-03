import 'package:flutter/material.dart';
import './responsive.dart';
import 'package:dotted_border/dotted_border.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    // required this.fieldName,
    required this.myController,
    // this.myIcon = Icons.verified_user_outlined,
    // this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  // String fieldName;
  // final IconData myIcon;
  // Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1),
          // labelText: fieldName,
          // prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(),
          disabledBorder: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15.0),
          ),
          labelStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15.0),
          ),
      ),
    );
  }
}
