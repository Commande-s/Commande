import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final String title;

  const CategoryPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xFFFEC894), // Laranja pastel
      ),
      body: Center(
        child: Text(
          'Você está na página de $title.',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
