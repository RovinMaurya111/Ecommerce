import 'dart:async';

import 'package:ecommerce/main.dart';
import 'package:ecommerce/view/Login/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var opacity = 0.0;

  @override
  void initState() {
    super.initState();
    // Start animation after 1 second
    Timer(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });
    // Navigate to the login page after 6 seconds
    Timer(Duration(seconds: 6), () {
      Get.to(Login());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: 4),
          child: Container(
            width: 160,
            height: 160,
            child: Image.asset('img/logo.jpg'),
          ),
        ),
      ),
    );
  }
}
