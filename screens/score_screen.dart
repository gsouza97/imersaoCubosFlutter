import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int maximum;

  ScoreScreen({@required this.score, @required this.maximum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage('lib/assets/icones.png')),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 113),
                Text(
                  'VOCÊ ACERTOU:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$score',
                      style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffE83B86)),
                    ),
                    Text(
                      ('/$maximum'),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff263238),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  offset: Offset(0, -1),
                  blurRadius: 5,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: Center(
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text(
                  'Jogar Novamente',
                  style: TextStyle(fontSize: 16),
                ),
                color: Color(0xffDA0175),
                textColor: Color(0xffF7F7F7),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
