import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sellers_app/authentication/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (c) => const AuthScreen(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/splash.jpg'),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'Sell food online',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontFamily: 'Signatra',
                    letterSpacing: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
