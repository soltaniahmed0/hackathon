import 'package:flutter/material.dart';

abstract class FRAppBar {
  static PreferredSizeWidget defaultAppBar(
    BuildContext context, {
    String title = '',
    List<Widget>? actions,
  }) {
    return AppBar(
      leading: IconButton(
        onPressed: (() => Navigator.pop(context)),
        icon: Image.asset(
          'assets/icons/back@2x.png',
          scale: 1.0,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Color.fromARGB(255, 192, 137, 11),
        ),
      ),
      centerTitle: false,
      actions: actions,
    );
  }
}
