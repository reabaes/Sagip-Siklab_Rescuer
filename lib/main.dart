import 'package:flutter/material.dart';
import 'package:sagip_siklab_rescuer/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Maps",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

