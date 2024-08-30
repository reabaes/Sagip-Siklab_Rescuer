import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png',
                height: 100), // Replace with your logo asset
            const SizedBox(height: 20),
            const Text(
              'SAGIPSIKLAB',
              style: TextStyle(
                fontSize: 24,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'RESCUER',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
