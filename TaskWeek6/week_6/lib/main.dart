import 'package:flutter/material.dart';

void main() {
  runApp(const FavFood());
}

class FavFood extends StatelessWidget {
  const FavFood({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://img.freepik.com/premium-photo/penne-pasta-carbonara-cream-sauce-with-mushroom_1339-81372.jpg?w=2000",
                width: double.infinity,
                height: 255,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              const Text(
                "About",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "White sauce pasta is also called Bechamel sauce pasta. The Bechamel sauce is made from a white roux (butter and flour) and milk and is used as a base for many sauces. It is often considered one of the mother sauces of French cuisine.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 8),
              const Text(
                "Ingredients",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      "images/pasta.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      "images/butter.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      "images/garlic.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      "images/chicken.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      "images/pasta.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      "images/butter.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      "images/garlic.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      "images/chicken.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
