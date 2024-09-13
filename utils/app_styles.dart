import 'package:flutter/material.dart';

class AppStyles {
  static const primaryColor = Color.fromARGB(255, 47, 48, 114);
  static const secondaryColor = Color.fromARGB(255, 88, 86, 81);

  static const TextStyle appBarTitleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle todoTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle completedTodoTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.lineThrough,
      color: Colors.grey);
}
