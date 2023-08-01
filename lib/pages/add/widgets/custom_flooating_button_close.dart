import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class CustomFlooatingButtonClose extends StatelessWidget {
  const CustomFlooatingButtonClose({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: color5,
      onPressed: () {
        Navigator.of(context).pop();
      },
      elevation: 5.0,
      child: const Icon(
        Icons.close,
        color: Colors.white,
      ),
    );
  }
}