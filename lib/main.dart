import 'package:citiapp/presentation/pages/auth/login/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Citi App',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
