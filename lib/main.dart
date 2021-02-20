import 'package:AcademyApp/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(Trivia());
}

class Trivia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        home: StartScreen(),
        duration: 3000,
        imageSize: 100,
        imageSrc: 'lib/assets/logo.png',
        textType: TextType.ScaleAnimatedText,
        backgroundColor: Colors.white,
      ),
    );
  }
}
