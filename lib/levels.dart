import 'package:flutter/material.dart';
import 'package:hp_quiz/quizPage.dart';

class Levels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
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
          children: [
            SizedBox(
              height: 80,
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    'https://i.pinimg.com/564x/1b/32/1b/1b321bd976e06bb86acca92e75ba269d.jpg'),
                title: Text(
                  'Level 1',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text(''),
                isThreeLine: true,
                trailing: RaisedButton(
                  child: Text('Play'),
                  color: Colors.pink[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizPage()));
                  },
                ),
              ),
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    'https://i.pinimg.com/564x/55/e8/f7/55e8f79d998a47484520e9174576d0d1.jpg'),
                title: Text(
                  'Level 2',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text(''),
                isThreeLine: true,
                trailing: RaisedButton(
                  child: Text('Play'),
                  color: Colors.pink[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {},
                ),
              ),
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    'https://i.pinimg.com/564x/13/52/c2/1352c2108674f9642213e424aac35c76.jpg'),
                title: Text(
                  'Level 3',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text(''),
                isThreeLine: true,
                trailing: RaisedButton(
                  child: Text('Play'),
                  color: Colors.pink[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {},
                ),
              ),
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    'https://i.pinimg.com/564x/69/60/46/696046b9748c78330e220dca09e89356.jpg'),
                title: Text(
                  'Level 4',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text(''),
                isThreeLine: true,
                trailing: RaisedButton(
                  child: Text('Play'),
                  color: Colors.pink[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {},
                ),
              ),
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    'https://i.pinimg.com/564x/db/a7/22/dba72240617e38ce4378e0b12241bca0.jpg'),
                title: Text(
                  'Level 5',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                subtitle: Text(''),
                isThreeLine: true,
                trailing: RaisedButton(
                  child: Text('Play'),
                  color: Colors.pink[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {},
                ),
              ),
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
