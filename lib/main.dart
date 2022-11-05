import 'package:flutter/material.dart';
import 'package:users_api/src/router/router.dart';
import 'package:users_api/src/screens/auth/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      home: AuthScreen(),
    );
  }
}