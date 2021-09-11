import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text('Quizzler'),
          backgroundColor: Colors.amberAccent,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  //create 2 lists, empty one to keepscore, a list of right and wrong icons to add to keepscore
  List<Widget> score = [
    Icon(Icons.check, color: Colors.green),
    Icon(Icons.close, color: Colors.red)
  ];
  List<Widget> scoreKeeper = [];

  //create question list
  List questions  = ['You can lead a cow down stairs but not up stairs.', 
                    'Approximately one quarter of human bones are in the feet.',
                    'A slug\'s blood is green.'];
  int questionnumber = 0;
  List<bool> questionanswers = [false, true, true];


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionnumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() { 
                  scoreKeeper.add(Icon( //add tick  to scoreKeeper list hard way
                    Icons.check,
                    color: Colors.green,
                  ));
                });
                if (questionanswers[questionnumber] == true){
                  print("got it right");
                } else {
                  print("got it wrong");
                }
                print("true pressed");

                questionnumber++;

              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() { // add x to scoreKeeper list from score list
                  scoreKeeper.add(score[1]);
                });
                if (questionanswers[questionnumber] == false){
                  print("got it right");
                } else {
                  print("got it wrong");
                }

                print("pressed false!");
                questionnumber++;
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
