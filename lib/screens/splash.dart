import 'dart:async';
import 'package:argrostation/screens/phone.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    MyPhone()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset('assets/logo.png'),
    );
  }
}
