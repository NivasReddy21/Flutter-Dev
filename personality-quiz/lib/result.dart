import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You Did It';
    if (resultScore <= 30) {
      resultText = 'You are awesome';
    } else {
      resultText = 'You are not awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'Restart Quiz',
          ),
          textColor: Colors.blue,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
