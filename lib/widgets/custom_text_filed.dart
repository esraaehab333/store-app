// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({super.key, required this.hintText, this.onChanged , this.type});
  final String hintText;
  Function(String)? onChanged;
  TextInputType ?type ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:  type,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}
