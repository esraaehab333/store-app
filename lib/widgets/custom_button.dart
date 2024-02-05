// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 CustomButton({super.key, required this.lable ,  this.onTap});
  final String lable;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color:Colors.blueAccent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            lable,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
