import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mentoring/login.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyLoginPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentoring Flutter'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 171, 154, 153),
        child: const FlutterLogo(
          size: double.infinity,
        ),
      ),
    );
  }
}
