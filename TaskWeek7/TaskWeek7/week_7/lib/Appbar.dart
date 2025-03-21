import 'package:flutter/material.dart';
import 'FavoriteIcon.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isFavorite;
  final VoidCallback onFavoritePressed;

  const CustomAppBar({
    super.key,
    required this.isFavorite,
    required this.onFavoritePressed,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
    widget.onFavoritePressed();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: const CircleAvatar(
        radius: 5,
        child: Icon(Icons.arrow_back, color: Colors.black),
      ),
      title: const Text(
        'Details',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      centerTitle: true,
      actions: [
        FavoriteIcon(
          isFavorite: isFavorite,
          onPressed: toggleFavorite,
        ),
      ],
    );
  }
}
