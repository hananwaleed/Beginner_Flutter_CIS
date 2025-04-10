import 'package:flutter/material.dart';

class NumbersItem extends StatefulWidget {
  const NumbersItem({super.key});

  @override
  State<NumbersItem> createState() => _NumbersItemState();
}

class _NumbersItemState extends State<NumbersItem> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            icon: const Icon(Icons.add),
          ),
          Text(
            '$count',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (count > 0) count--;
              });
            },
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
