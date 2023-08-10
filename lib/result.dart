import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore, numberOfQuestions;
  final void Function()? resetHandler;
  Result(this.resultScore, this.numberOfQuestions, this.resetHandler);
  String get resultPhrase {
    String resultText =
        '\n\nYou\'ve come at the end!\n\n\nYour score is \n\n$resultScore\nover\n$numberOfQuestions';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetHandler,
          child: Text('\n\n\nRestart Quiz!'),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
        )
      ],
    ));
  }
}
