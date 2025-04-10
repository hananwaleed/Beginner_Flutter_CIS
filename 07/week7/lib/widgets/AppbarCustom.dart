import 'package:flutter/material.dart';
import 'FavoriteIconCustom.dart'; 

class AppbarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppbarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back, color: Colors.black, size: 28),
      ),
      title: const Text(
        "Details",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      actions: const [
        FavoriteIconCustom(),
        SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
