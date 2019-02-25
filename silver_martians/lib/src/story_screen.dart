import 'package:flutter/material.dart';
import 'package:silver_martians/res/strings.dart';
import 'package:silver_martians/src/story_page_button.dart';

MaterialPageRoute dummyStoryScreenRoute() => MaterialPageRoute(
      // The underscore is used as we do not require any
      builder: (_) => StoryScreen(
            assetImagePath: "assets/images/page0.png",
            button1Function: () {
              print("1");
            },
            button1Text: "button 1",
            button2Text: "button 2",
            button2Function: () {
              print("button 2");
            },
            storyText: page2("raveesh"),
          ),
    );

class StoryScreen extends StatelessWidget {
  final String button1Text;
  final String button2Text;
  final Function button1Function;
  final Function button2Function;
  final String storyText;
  final String assetImagePath;

  const StoryScreen({
    Key key,
    @required this.button1Text,
    @required this.button2Text,
    @required this.button1Function,
    @required this.button2Function,
    @required this.storyText,
    @required this.assetImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Silver Martian"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset(assetImagePath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(storyText),
            ),
            Spacer(),
            Visibility(
              visible: button1Text != null,
              child: StoryPageButton(
                buttonText: button1Text,
                buttonFunction: button1Function,
              ),
            ),
            StoryPageButton(
              buttonText: button2Text,
              buttonFunction: button2Function,
            )
          ],
        ),
      ),
    );
  }
}