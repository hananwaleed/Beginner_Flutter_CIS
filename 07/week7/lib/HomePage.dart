import 'package:flutter/material.dart';
import 'package:week7/widgets/FavoriteIconCustom.dart';
import 'package:week7/widgets/ButtonCustom.dart';
import 'widgets/AppbarCustom.dart';
import 'widgets/BulidColors.dart';
import 'widgets/NumberItemCustom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int price = 212;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarCustom(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 230,
                height: 260,
                child: Image.asset(
                  "images/R_removebg_preview_1.webp",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Chair',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '\$$price',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Minimalist Style with Pillow',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(style: TextStyle(fontSize: 17),
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            ),
            const SizedBox(height: 15),
            
            Row(
              children: const [
                Flexible(child: BuildColors()),  
                SizedBox(width: 10),
                NumbersItem(),
              ],
            ),

            const SizedBox(height: 50),
            Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const FavoriteIconCustom(),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: SizedBox(
                    height: 55,
                    child: const ButtonCustom(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
