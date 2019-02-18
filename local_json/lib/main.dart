import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local JSON',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local JSON"),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle
            .of(context)
            .loadString('local_json/employee.json'),
            builder: (context, snapshot) {
              var mydata = jsonDecode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text("Name: " + mydata[index]["name"]),
                        Text("Age: " + mydata[index]["age"]),
                        Text("Gender: " + mydata[index]["gender"]),
                      ],
                    ),
                  );
                },
                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }
}

