import 'package:e_consultation/presentation/screen/Auth/login_page.dart';
import 'package:e_consultation/presentation/screen/Auth/signup_page.dart';
import 'package:e_consultation/presentation/screen/Auth/startPage.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String startPage = '/startPage';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case startPage:
        return MaterialPageRoute(builder: (_) => StartPage());
      case login:
        return MaterialPageRoute(builder: (_) => Loginpage());
      case signup:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      default:
        throw const RouteException('Route not found!');
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
