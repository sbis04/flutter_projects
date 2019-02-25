import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomePage(),
      theme: ThemeData(
        accentColor: Colors.blueAccent,
        brightness: Brightness.light,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myText = "Hello World";

  void _changeText() {
    setState(() {
      if(myText.startsWith("H"))
        myText = "Welcome to my app";
      else
        myText = "Hello World";
    });
  }
  
  Widget _bodyWidget() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              myText,
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            RaisedButton(
              child: Text(
                "Click",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: _changeText,
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: _bodyWidget(),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.text_fields),
          onPressed: _changeText,
      ),
    );
  }
}

