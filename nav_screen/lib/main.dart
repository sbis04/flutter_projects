import 'package:flutter/material.dart';

void main() => runApp(new NavigationApp());

class NavigationApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Material Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to Second Screen'),
          onPressed: () {
            Navigator
            .of(context)
            .push(MaterialPageRoute(builder: (_) => SecondScreen()));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Go to First Screen'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}