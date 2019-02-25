import 'package:flutter/material.dart';
import 'dart:convert';

import 'dart:async';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Http Json',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.yellowAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List data;
  final String url = "https://swapi.co/api/starships";

  @override
  void initState() {
    super.initState();
    this.getJsonResponse();
  }

  Future<String> getJsonResponse() async {
    var response = await http.get(
      Uri.encodeFull(url),
      headers: {"Accept": "application/json"}
    );

    setState(() {
      var convertDatatoJson = jsonDecode(response.body);
      data = convertDatatoJson['results'];
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Json"),
      ),
      body: Scrollbar(
        child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  color: Colors.lightBlueAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          data[index]["name"],
                          style: TextStyle(fontSize: 24),
                          ),
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: Text(
                          data[index]["hyperdrive_rating"],
                          style: TextStyle(fontSize: 24),
                          ),
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        child: Text(
                          data[index]["starship_class"],
                          style: TextStyle(fontSize: 24),
                        ),
                        padding: EdgeInsets.all(10.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: data == null ? 0 : data.length,
      ),
      )
       
    );
  }
}
