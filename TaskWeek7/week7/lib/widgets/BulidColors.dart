import 'package:flutter/material.dart';

class BuildColors extends StatelessWidget {
  const BuildColors({super.key});

  static final List<Color> colors = [Colors.orange, Colors.green, Colors.red, Colors.blue];

  Widget _buildColorCircle(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      child: CircleAvatar(radius: 16, backgroundColor: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colors.map((color) => _buildColorCircle(color)).toList(),
    );
  }
}
