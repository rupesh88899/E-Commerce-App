import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String category;
  const CategoryTile({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 208, 205, 213),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          category,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
