import 'package:AcademyApp/trivia_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 167),
          Image(
            image: AssetImage('lib/assets/logo.png'),
          ),
          SizedBox(height: 24),
          Text(
            'Trivia\nAcademy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 88),
          FlatButton(
            color: Color(0xffDA0175),
            textColor: Color(0xffF7F7F7),
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 11),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => TriviaScreen()),
              );
            },
            child: Text(
              'Começar',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
