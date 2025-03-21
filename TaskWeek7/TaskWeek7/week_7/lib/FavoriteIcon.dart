import 'package:flutter/material.dart';

class FavoriteIcon extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onPressed;

  const FavoriteIcon({
    super.key,
    required this.isFavorite,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : Colors.black,
        size: 28,
      ),
    );
  }
}
