import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();

    // throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  final _questions = const [
    {
      'questionText': 'Quel mathématicien a formulé le "Théorème de Fermat" ?',
      'answers': [
        {'text': 'Isaac Newton', 'score': 0},
        {'text': 'Euclide', 'score': 0},
        {'text': 'Pierre-Simon Laplace', 'score': 0},
        {'text': 'Pierre de Fermat', 'score': 1},
      ]
    },
    {
      'questionText': 'Qui a écrit la pièce de théâtre "Romeo et Juliette" ?',
      'answers': [
        {'text': 'William Shakespeare', 'score': 1},
        {'text': 'George Bernard Shaw', 'score': 0},
        {'text': 'Oscar Wilde', 'score': 0},
        {'text': 'Emily Brontë', 'score': 0},
      ]
    },
    {
      'questionText': 'Quelle est la capitale d\'Azerbaïdjan ?',
      'answers': [
        {'text': 'Caracas', 'score': 0},
        {'text': 'Achgabat', 'score': 0},
        {'text': 'Bakou', 'score': 1},
        {'text': 'Addis-Abeba', 'score': 0}
      ]
    },
    {
      'questionText': 'Le premier nombre premier est ...',
      'answers': [
        {'text': '0', 'score': 0},
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 1},
        {'text': 'Aucune de ces réponses', 'score': 0}
      ]
    },
    {
      'questionText':
          'Quel pays a remporté la coupe du monde de football en 2014 ?',
      'answers': [
        {'text': 'L\'Allemagne', 'score': 1},
        {'text': 'Le Brésil', 'score': 0},
        {'text': 'L\'Argentine', 'score': 0},
        {'text': 'L\'Italie', 'score': 0}
      ]
    },
    {
      'questionText':
          'Quel était le nom de l\'apôtre qui a accompagné Jésus et qui a ensuite nié le connaître ?',
      'answers': [
        {'text': 'Marc', 'score': 0},
        {'text': 'Pierre', 'score': 1},
        {'text': 'Judas', 'score': 0},
        {'text': 'Jean Baptiste', 'score': 0}
      ]
    },
    {
      'questionText': 'Où est né Jésus ?',
      'answers': [
        {'text': 'Au Cap Vert', 'score': 0},
        {'text': 'A Dékon', 'score': 0},
        {'text': 'A Nazareth', 'score': 0},
        {'text': 'A Bethléem', 'score': 1},
      ]
    },
    {
      'questionText':
          'Qui a dit « Le cœur a ses raisons que la raison ignore » ?',
      'answers': [
        {'text': 'Casanova', 'score': 0},
        {'text': 'Pascal', 'score': 1},
        {'text': 'Sénèque', 'score': 0},
        {'text': 'Hegel', 'score': 0},
      ]
    },
    {
      'questionText':
          'Qui a dit « Tout ce que je sais, c’est que je ne sais rien » ?',
      'answers': [
        {'text': 'Sartre', 'score': 0},
        {'text': 'Tocqueville', 'score': 0},
        {'text': 'Louis XVI', 'score': 0},
        {'text': 'Socrate', 'score': 1},
      ]
    },
    {
      'questionText': 'À qui doit-on cette célèbre phrase « I have a dream » ?',
      'answers': [
        {'text': 'Martin Luther King', 'score': 1},
        {'text': 'Jean Paul Sartre', 'score': 0},
        {'text': 'Victor Hugo', 'score': 0},
        {'text': 'Abimélec', 'score': 0},
      ]
    },
    {
      'questionText': 'Quel genre d\'animal est la baleine ?',
      'answers': [
        {'text': 'Poisson', 'score': 0},
        {'text': 'Reptile', 'score': 0},
        {'text': 'Mammifère', 'score': 1},
        {'text': 'Oiseau', 'score': 0},
      ]
    },
    {
      'questionText': 'Comment s\'appelle le fondateur de Facebook ?',
      'answers': [
        {'text': 'Mark Zuckerberg', 'score': 1},
        {'text': 'Steve Jobs', 'score': 0},
        {'text': 'Bill Gates', 'score': 0},
        {'text': 'Guido van Rossum', 'score': 0},
      ]
    },
    {
      'questionText': 'Quel est le plus haut bâtiment du monde ?',
      'answers': [
        {'text': 'Burj Khalifa', 'score': 1},
        {'text': 'Merdeka  118', 'score': 0},
        {'text': 'Tour de shanghai', 'score': 0},
        {'text': 'Centre financier du CTF de Tianjin', 'score': 0},
      ]
    },
    {
      'questionText': 'Quelle est la capitale du Canada ?',
      'answers': [
        {'text': 'Ottawa', 'score': 1},
        {'text': 'Toronto', 'score': 0},
        {'text': 'Montréal', 'score': 0},
        {'text': 'Vancouver', 'score': 0},
      ]
    },
    {
      'questionText': 'Quel élément chimique a le symbole "H" ?',
      'answers': [
        {'text': 'Oxygène', 'score': 0},
        {'text': 'Azote', 'score': 0},
        {'text': 'Hydrogène', 'score': 1},
        {'text': 'Carbone', 'score': 0},
      ]
    },
    {
      'questionText': 'Quel est le pays le plus peuplé du monde ?',
      'answers': [
        {'text': 'Inde', 'score': 1},
        {'text': 'États-Unis', 'score': 0},
        {'text': 'Chine', 'score': 0},
        {'text': 'Brésil', 'score': 0},
      ]
    },
    {
      'questionText':
          'Quel grand compositeur est connu pour sa Symphonie n°9 en ré mineur ?',
      'answers': [
        {'text': 'Wolfgang Amadeus Mozart', 'score': 0},
        {'text': 'Ludwig van Beethoven', 'score': 1},
        {'text': 'Johann Sebastian Bach', 'score': 0},
        {'text': 'Franz Schubert', 'score': 0},
      ]
    },
    {
      'questionText':
          'Quelle est la plus grande planète de notre système solaire ?',
      'answers': [
        {'text': 'Vénus', 'score': 0},
        {'text': 'Jupiter', 'score': 1},
        {'text': 'Mars', 'score': 0},
        {'text': 'Saturne', 'score': 0},
      ]
    },
    {
      'questionText': 'Quelle est la capitale de l\'Australie ?',
      'answers': [
        {'text': 'Sydney', 'score': 0},
        {'text': 'Melbourne', 'score': 0},
        {'text': 'Canberra', 'score': 1},
        {'text': 'Adélaïde', 'score': 0},
      ]
    },
    {
      'questionText':
          'Quelle célèbre peinture a été réalisée par Leonardo da Vinci ?',
      'answers': [
        {'text': 'La Nuit étoilée', 'score': 0},
        {'text': 'La Joconde', 'score': 1},
        {'text': 'Les Tournesols', 'score': 0},
        {'text': 'La Guerre de Troie', 'score': 0},
      ]
    },
    {
      'questionText': 'Quel est le plus grand océan du monde ?',
      'answers': [
        {'text': 'Océan Atlantique', 'score': 0},
        {'text': 'Océan Indien', 'score': 0},
        {'text': 'Océan Arctique', 'score': 0},
        {'text': 'Océan Pacifique', 'score': 1},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('21 Questions Quiz'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(_totalScore, _questions.length, _resetQuiz)));
    // throw UnimplementedError();
  }
}
