import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.account_circle),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text("Developer Name:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 4)),
            Text("Souvik Biswas",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text("Contact Info: ", style: TextStyle(fontSize: 20),),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text("Email: sbis1999@gmail.com", style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}