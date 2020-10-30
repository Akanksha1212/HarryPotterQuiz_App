import 'package:flutter/material.dart';
import 'package:hp_quiz/levels.dart';
import 'quizPage.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backhp.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/hp.png"),
              height: 200,
              width: 200,
            ),
            // Text(
            //   "Trivia",
            //   style: TextStyle(
            //       fontSize: 40,
            //       fontWeight: FontWeight.w600,
            //       color: Colors.white),
            // ),
            Container(
              height: 50,
              width: 200,
              child: RaisedButton(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                color: Colors.pink[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Levels()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
