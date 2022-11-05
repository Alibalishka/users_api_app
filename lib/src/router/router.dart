import 'package:flutter/material.dart';
import 'package:users_api/src/router/routing_constant.dart';
import 'package:users_api/src/screens/contacts/contacts_screen.dart';

import '../screens/auth/auth_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        );
      case ContactsRoute:
        return MaterialPageRoute(
          builder: (context) => const ContactScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        );
    }
  }
}