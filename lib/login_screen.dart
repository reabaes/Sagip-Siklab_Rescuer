import 'package:flutter/material.dart';
import 'package:sagip_siklab_rescuer/map_screen.dart';
import 'package:sagip_siklab_rescuer/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                hintText: 'Username',
                hintStyle: const TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[800],
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              obscureText: true,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MapScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[700], // Updated from `primary`
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Center(child: Text('LOG IN')),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()),
                  );
              },
              child: const Text(
                "Don't have account? Sign up.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
