import 'package:flutter/material.dart';
import 'package:todo_app/screens/profile.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/splash.jpeg",
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Get Organized Your Life",
              style: TextStyle(
                color: Color.fromARGB(255, 68, 68, 68),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Tudy is a simple and effective",
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 111, 111, 111),
              ),
            ),
            const Text(
              "to-do list and task manager app",
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 111, 111, 111),
              ),
            ),
            const Text(
              "which helps you manage time.",
              style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 111, 111, 111),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 55),
                backgroundColor: const Color.fromRGBO(8, 216, 182, 1),
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
