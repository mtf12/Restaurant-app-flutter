import 'package:flutter/material.dart';

import 'on_boarding1.dart';
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4),() => Navigator.push(context, MaterialPageRoute(builder: (context) =>onBoarding1() ,)),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Image.asset("assets/images/logo2.png"),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "OREGANO",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ],
      ),
    );
  }
}
