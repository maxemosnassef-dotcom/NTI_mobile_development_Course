import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      centerTitle: true,
      title: Text(
        "XO GAME",
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
