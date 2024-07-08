import 'package:flutter/material.dart';
import 'package:untitled6/login_screen.dart';
import 'package:untitled6/start.dart';
import 'package:untitled6/signup_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Start(),
        '/signup': (context) => const SignUp(),
        '/start': (context) => const Start(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
