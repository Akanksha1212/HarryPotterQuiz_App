class Question {
  String questionString;
  String questionAnswer;
  String option1;
  String option2;
  String option3;
  String option4;
  Question(this.questionString, this.questionAnswer, this.option1, this.option2,
      this.option3, this.option4);
}

class QuizLogic {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('What is Harry Potter’s patronus?', 'stag', 'horse', 'otter',
        'hare', 'stag'),
    Question(
        'Who was the Hogwarts headmaster right before Dumbledore?',
        'Armando Dippet',
        'Phineas Nigellus',
        'Armando Dippet',
        'Dolores Umbridge',
        'Dexter Fortescue'),
    Question('What does Dumbledore give to Ron in his will?', 'Deluminator',
        'Invisibility cloak', 'Portrait', 'Deluminator', 'Wand'),
    Question('What position does Harry play on his Quidditch team?', 'Seeker',
        'Chaser', 'Keeper', 'Bludger', 'Seeker'),
    Question('Who is Fluffy?', 'Three-headed dog', 'Hagrid\'s Dragon',
        'Hermoine\'s Cat', 'Three-headed dog', 'Harry\'s Owl'),
    Question('What does the Imperius Curse do?', 'Controls', 'Tortures',
        'Invisible', 'Kills', 'Controls'),
    Question('Who kills Professor Dumbledore?', 'Severus Snape', 'Draco Malfoy',
        'Fenrir Greyback', 'Bellatrix Lestrange', 'Severus Snape'),
    Question('Who is Scabbers the rat?', 'Peter Pettigrew', 'Remus Lupin',
        'Sirius Black', 'Peter Pettigrew', 'Professor Mcgonagall'),
    Question(' Which is not a method of transport for wizards?', 'Aparecium',
        'Aparecium', 'Floo Powder', 'Apparition', 'A potkey'),
  ];

  String getQuestion() {
    return _questions[_questionNumber].questionString;
  }

  bool isFinshed() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  int printQuestionNumber() {
    print(_questionNumber);
  }

  int printQuestionsLength() {
    print(_questions.length);
  }

  void reset() {
    _questionNumber = 0;
  }

  String getAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  String getOption1() {
    return _questions[_questionNumber].option1;
  }

  String getOption2() {
    return _questions[_questionNumber].option2;
  }

  String getOption3() {
    return _questions[_questionNumber].option3;
  }

  String getOption4() {
    return _questions[_questionNumber].option4;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }
}
