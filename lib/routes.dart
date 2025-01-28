import 'package:flutter/material.dart';
import 'views/home/home_page.dart';
import 'views/confirmation/confirmation_page.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (context) => HomePage(),
      '/confirmation': (context) => ConfirmationPage(),
    };
  }
}
