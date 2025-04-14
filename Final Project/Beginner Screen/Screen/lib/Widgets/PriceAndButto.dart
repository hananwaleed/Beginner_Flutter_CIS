import 'package:flutter/material.dart';

class PriceAndButton extends StatelessWidget {
  const PriceAndButton({super.key, required this.priceText});

  final String priceText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: _buildPriceText(priceText),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            "Add To Cart ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }

  List<TextSpan> _buildPriceText(String price) {
    final parts = price.replaceAll(r'$', '').split('.');
    final intPart = parts[0];
    final decimalPart = parts.length > 1 ? '.${parts[1]}' : '';

    return [
      const TextSpan(
        text: r'$',
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      TextSpan(
        text: intPart,
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      TextSpan(
        text: decimalPart,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    ];
  }
}
