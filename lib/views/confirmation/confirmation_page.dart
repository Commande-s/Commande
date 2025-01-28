import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Parabéns! Você finalizou seu pedido.',
          style: TextStyle(
            fontFamily: 'Berlin Sans FB',
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
