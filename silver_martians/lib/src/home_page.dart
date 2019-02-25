import 'package:flutter/material.dart';
import 'package:silver_martians/src/ask_name_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Silver Martian"),
          backgroundColor: Colors.blueGrey,
        ),
        body: AskNameScreen(),
      ),
    );
  }
}
