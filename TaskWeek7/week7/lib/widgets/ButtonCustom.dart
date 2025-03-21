import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      height: 55, 
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          "Add to cart",
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.05, 
          ),
        ),
      ),
    );
  }
}
