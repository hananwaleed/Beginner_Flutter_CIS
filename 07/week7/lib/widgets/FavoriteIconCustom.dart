import 'package:flutter/material.dart';

class FavoriteIconCustom extends StatefulWidget {
  const FavoriteIconCustom({super.key});

  @override
  State<FavoriteIconCustom> createState() => _FavoriteIconCustomState();
}

class _FavoriteIconCustomState extends State<FavoriteIconCustom> {
  bool favoriteBorder = false; 

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          favoriteBorder = !favoriteBorder; 
        });
      },
      icon: Icon(
        favoriteBorder ? Icons.favorite : Icons.favorite_border,
        color: favoriteBorder ? Colors.red : Colors.black,
        size: 28,
      ),
    );
  }
}
