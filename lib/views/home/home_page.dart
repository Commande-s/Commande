import 'package:flutter/material.dart';
import 'home_sidebar.dart';
import 'home_content.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          HomeSidebar(),
          Expanded(child: HomeContent()),
        ],
      ),
    );
  }
}
