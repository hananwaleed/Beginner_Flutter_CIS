import 'package:flutter/material.dart';
import 'AppBar.dart';  
import 'BulidColor.dart';  
import 'NumberItem.dart';  
import 'FavoriteIcon.dart';  

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  bool isFavorite = false; 
  int price = 212;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isFavorite: isFavorite, 
        onFavoritePressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 335,
                child: Image.asset("images/images/R_removebg_preview_1.webp", fit: BoxFit.contain),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Chair",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black54),
                ),
                Text(
                  "\$${price * count}",
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              "Minimalist Style with pillow",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildColor(colors: [Colors.blue, Colors.red, Colors.green, Colors.yellow]),
                NumberItem(), 
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavoriteIcon(
                  isFavorite: isFavorite, 
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Added to cart!");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 23),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
