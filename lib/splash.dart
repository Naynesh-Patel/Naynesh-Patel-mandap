import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mandap/register.dart';






class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>  const Register(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.black,
      // appBar: AppBar(
      //   elevation: 0,
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Colors.white,
      //   ),
      // ),
      body: Center(
        child: Image.asset("assets/images/app_logo.png"),
      ),
    );
  }
}
