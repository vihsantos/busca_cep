import 'package:busca_cep/presentation/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case Routes.startPageRoute:
        return MaterialPageRoute(builder: (_) => const StartPage());
      default:
        return MaterialPageRoute(builder: (_) => const StartPage());
    }
  }
}
