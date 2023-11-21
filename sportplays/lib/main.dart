// main.dart
import 'package:flutter/material.dart';
import 'package:sportplays/register.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const Register(),
    );
  }
}
