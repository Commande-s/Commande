import 'package:flutter/material.dart';
import 'views/home/home_page.dart';
import 'views/categories/category_page.dart';

void main() {
  runApp(CommandeeApp());
}

class CommandeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/categories': (context) => CategoryPage(title: ''), 
      },
    );
  }
}
