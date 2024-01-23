import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/pages/splash.dart';

import 'homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("SplashScreen"),
      ),
      body: AnimatedSplashScreen(
        backgroundColor: Colors.teal,
        splash: ListView(
          children: [
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 192, 61, 67),
              ),
              child: Image(
                height: 100.0,
                width: 100.0,
                color: Colors.amber,
                image: NetworkImage(
                    "https://imgs.search.brave.com/_WeRILENZZFx6eKV9kucdS5BKhWdlAmvtWsy2flVs8o/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI5/NzE1OTM2NS9waG90/by9wb3J0cmFpdC1v/Zi15b3VuZy1zbWls/aW5nLXdvbWFuLWZh/Y2UtcGFydGlhbGx5/LWNvdmVyZWQtd2l0/aC1mbHlpbmctaGFp/ci1pbi13aW5keS1k/YXktc3RhbmRpbmcu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PUkxNmNfWnpRSEVl/R29QVVZyVlA5cFB1/c1N6c215bXZWS2RR/VmdQdVZkRG89"),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Welcome to my Flutter class"),
          ],
        ),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
      ),
    );
  }
}
