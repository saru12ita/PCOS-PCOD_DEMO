import 'package:flutter/material.dart';
import 'package:pcos_app/consts/consts.dart';

Widget ourButton({
  required Color color,
  required String title,
  required Color textColor,
  required VoidCallback onPress,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(15),
    ),
    onPressed: onPress,
    child: Text(
      title,
      style: TextStyle(
        color: textColor,
        fontFamily: bold,
      ),
    ),
  );
}
