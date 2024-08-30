import 'package:flutter/material.dart';
import 'package:sagip_siklab_rescuer/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
   void initState() {
    super.initState();
    // Delay for 5 seconds and then navigate to the login screen
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {  // Check if the widget is still mounted
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 100,
            ), // Replace with your logo asset
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
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
