import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;
  final String answerText;
  Answer(this._selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 50, // <-- SEE HERE
          ),
          ElevatedButton(
            child: Text(answerText),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.all(30),
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              minimumSize: const Size(240, 80),
            ),
            onPressed: _selectHandler,
          ),
        ],
      ),
    );
  }
}
