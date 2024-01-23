import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mess/auth/sign_up_page.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView(
          children: [
            const SizedBox(height: 50),
            SvgPicture.asset(
              'assets/image.svg',
              height: 350,
              width: 300,
            ),
            const SizedBox(height: 100),
            const Text(
              'Order your food anytime',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'With first food home delivery restaurants ,order favoritefood at your finger tips',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignUpPage()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
