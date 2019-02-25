import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

// Just Type "stl" for stateless and "stf" for stateful Widget
// When we would define stateful Widget we have to add additional thing called "states"
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use MaterialApp instead of Container, and in this final version of
    // Flutter we do not have to add "new" before MaterialApp
    return MaterialApp(
      // Use "control" + "Space" to see the list of widgets (LookUp Items) available
      title: "My App",
      // "Scaffold" is a blank structure in the home region of the app
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
          child: Text("Hello World"), // We can use " or ' to write the text of Text field
        ),
      ),
    );
  }
}


//                                MaterialApp:
//
//                        home: Scaffold
//                         ____________________________
//                        |           appBar           |
//                        |         1) title           |
//                        |____________________________|
//                        |                            |
//                        |                            |
//                        |                            |
//                        |                            |
//                        |                            |
//                        |                            |
//                        |                            |
//                        |            body            |
//                        |          1) Center         |
//                        |          2) Text           |
//                        |                            |
//                        |                            |
//                        |                            |
//                        |                            |
//                        |                            |
//                        |                            |
//                        |                            |
//                        ------------------------------
