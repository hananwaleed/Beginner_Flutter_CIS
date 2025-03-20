import 'package:flutter/material.dart';

class BuildColor extends StatelessWidget {
  final List<Color> colors;

  const BuildColor({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          colors.map((color) {
            return Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 1),
              ),
            );
          }).toList(),
    );
  }
}
