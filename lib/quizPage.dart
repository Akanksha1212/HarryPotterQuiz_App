import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_logic.dart';

QuizLogic quizLogic = new QuizLogic();

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<Widget> scoreKeeper = [];

  int totalCorrect = 0;
  int totalQuestions = 0;

  void checkAnswer(String value) {
    if (quizLogic.getAnswer() == value) {
      print('right answer');
      scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      totalCorrect++;
    } else {
      print('wrong answer');
      scoreKeeper.add(Icon(Icons.close, color: Colors.red));
    }
    totalQuestions++;
    if (quizLogic.isFinshed() == true) {
      Alert(
          context: context,
          title: 'Finished',
          desc: 'You scored a total of $totalCorrect out of $totalQuestions!',
          buttons: [
            DialogButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Play Again',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ))
          ]).show();
      quizLogic.reset();
      scoreKeeper.clear();
      totalCorrect = 0;
      totalQuestions = 0;
    } else {
      quizLogic.nextQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/564x/94/d2/a9/94d2a951d4a59ee1911d5fc26a670f38.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.lightBlue[100],
                    ),
                    child: Center(
                      child: Text(
                        quizLogic.getQuestion(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  )),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)),
                        textColor: Colors.white,
                        color: Colors.lightBlue,
                        child: Text(
                          quizLogic.getOption1(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            checkAnswer(quizLogic.getOption1());
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)),
                        textColor: Colors.white,
                        color: Colors.lightBlue,
                        child: Text(
                          quizLogic.getOption2(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            checkAnswer(quizLogic.getOption2());
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)),
                        textColor: Colors.white,
                        color: Colors.lightBlue,
                        child: Text(
                          quizLogic.getOption3(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            checkAnswer(quizLogic.getOption3());
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0)),
                        textColor: Colors.white,
                        color: Colors.lightBlue,
                        child: Text(
                          quizLogic.getOption4(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            checkAnswer(quizLogic.getOption4());
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 30,
              color: Colors.amber,
              child: Expanded(
                child: Row(
                  children: scoreKeeper,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
