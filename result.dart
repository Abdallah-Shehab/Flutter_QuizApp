import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  final int questionCounter;
  Result(this.resultScore, this.resetHandler, this.questionCounter);
  String get resultPhrase {
    String resultText;
    resultText = "you Got  " +
        "$resultScore" +
        " Correct Answers From " +
        "$questionCounter" +
        " Questions";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 50, // <-- SEE HERE
        ),
        Text(resultPhrase,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
        SizedBox(
          height: 50, // <-- SEE HERE
        ),
        ElevatedButton(
          child: Text('Restart quiz'),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(240, 80),
            textStyle:
                const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            primary: Colors.green,
          ),
          onPressed: resetHandler,
        ),

        // TextButton(onPressed: resetHandler, child: Text('Restart quiz'))
      ],
    ));
  }
}
