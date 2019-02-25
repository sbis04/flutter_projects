import 'package:flutter/material.dart';

class StoryPageButton extends StatelessWidget {
  final Function buttonFunction;
  final String buttonText;

  const StoryPageButton({
    Key key,
    this.buttonFunction,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: buttonFunction,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      color: Colors.blueGrey,
      padding: EdgeInsets.all(0),
    );
  }
}
