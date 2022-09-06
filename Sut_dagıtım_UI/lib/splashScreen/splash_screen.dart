import 'dart:async';

import 'package:drivers_app_1/authentication/login_screen.dart';
import 'package:drivers_app_1/authentication/signup_screen.dart';
import 'package:drivers_app_1/mainScreens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/painting.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 1), () async {
      // 13 saniye sonra ana ekrana döndürüyor
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/pngegg2.png"),
              const SizedBox(
                height: 140,
              ),
              const Text(
                "powered by ciftciler süt ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
