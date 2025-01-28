import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Seu prato favorito',
                style: TextStyle(
                  fontFamily: 'Berlin Sans FB',
                  fontSize: 24,
                  color: Colors.grey,
                ),
              ),
              Icon(Icons.search, size: 30, color: Colors.black),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              'Escolha uma categoria ao lado.',
              style: TextStyle(
                fontFamily: 'Berlin Sans FB',
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
