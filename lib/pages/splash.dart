import 'package:flutter/material.dart';

import 'homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      Duration(milliseconds: 1500),
      () {},
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Gradient Text
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Splash"),
        ),
      ),
      body: Container(
          child: Center(
        child: Text(
          'Hello Splash Screen !',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient),
        ),
      )),
    );
  }
}
