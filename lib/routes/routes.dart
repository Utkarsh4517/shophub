import 'package:flutter/material.dart';
import 'package:shophub/screens/home/homescreen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomePage.route();
      case HomePage.routeName:
        return HomePage.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(appBar: AppBar(title: const Text('Error'),),),
    );
  }
}
