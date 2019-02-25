import 'package:flutter/material.dart';
import 'package:silver_martians/src/story_route_generator.dart';

// Alt + Enter to convert Stateless to Stateful not vice versa
class AskNameScreen extends StatefulWidget {
  @override
  AskNameScreenState createState() {
    return new AskNameScreenState();
  }
}

class AskNameScreenState extends State<AskNameScreen> {
  TextEditingController nameController;

  // For initializing
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  // For disposing, to prevent memory leaks
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  onStartAdventurePressed() {
    print(nameController.text);
    Navigator.push(context, getRouteByStoryStage(StoryStage.page0, nameController.text,));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/main_title.png"),
        ),
      ),
      child: Column(
        children: <Widget>[
          Spacer(),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "ENTER YOUR NAME",
            ),
          ),
          RaisedButton(
            //onPressed: () {},         ......Anonymous Function
            onPressed: onStartAdventurePressed, // void callback
            child: Text("START YOUR ADVENTURE"),
          ),
        ],
      ),
    );
  }
}
