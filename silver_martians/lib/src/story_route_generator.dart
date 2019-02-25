import 'package:flutter/material.dart';
import 'package:silver_martians/res/strings.dart';
import 'package:silver_martians/src/story_screen.dart';

enum StoryStage {
  page0,
  page1,
  page2,
  page3,
  page4,
  page5,
  page6,
}

MaterialPageRoute getRouteByStoryStage(StoryStage stage, String name) {
  return MaterialPageRoute(builder: (BuildContext context) {
    //named fn
    Function buttonFunction({@required StoryStage stage}) {
          return () {
            Navigator.push(context, getRouteByStoryStage(stage, name));
          };
        }

    switch (stage) {
      case StoryStage.page0:
        return StoryScreen(
          storyText: page0(name),
          button1Text: page0_choice1,
          button2Text: page0_choice2,
          button1Function: buttonFunction(stage: StoryStage.page1),
          button2Function: buttonFunction(stage: StoryStage.page2),
          assetImagePath: 'assets/images/page0.png',
        );
        break;

      case StoryStage.page1:
        return StoryScreen(
          button1Text: page1_choice1,
          button2Text: page1_choice2,
          button1Function: buttonFunction(stage: StoryStage.page3),
          button2Function: buttonFunction(stage: StoryStage.page4),
          storyText: page1(name),
          assetImagePath: 'assets/images/page1.png',
        );
        break;

      case StoryStage.page2:
        return StoryScreen(
          button1Text: page2_choice1,
          button2Text: page2_choice2,
          button1Function: buttonFunction(stage: StoryStage.page1),
          button2Function: buttonFunction(stage: StoryStage.page6),
          storyText: page2(name),
          assetImagePath: "assets/images/page2.png",
        );
        break;

      case StoryStage.page3:
        return StoryScreen(
          button1Text: page3_choice1,
          button2Text: page3_choice2,
          button1Function: buttonFunction(stage: StoryStage.page4),
          button2Function: buttonFunction(stage: StoryStage.page5),
          storyText: page3(name),
          assetImagePath: "assets/images/page3.png",
        );
        break;

      case StoryStage.page4:
        return StoryScreen(
          button1Text: page4_choice1,
          button2Text: page4_choice2,
          button1Function: buttonFunction(stage: StoryStage.page5),
          button2Function: buttonFunction(stage: StoryStage.page6),
          storyText: page4(name),
          assetImagePath: "assets/images/page4.png",
        );
        break;

      case StoryStage.page5:
        return StoryScreen(
          storyText: page5(name),
          button1Text: null,
          button1Function: null,
          button2Text: "PLAY AGAIN",
          button2Function: buttonFunction(stage: StoryStage.page1),
          assetImagePath: "assets/images/page5.png",
        );
        break;

      case StoryStage.page6:
        return StoryScreen(
          storyText: page5(name),
          button1Text: null,
          button1Function: null,
          button2Text: "PLAY AGAIN",
          button2Function: buttonFunction(stage: StoryStage.page1),
          assetImagePath: "assets/images/page6.png",
        );
        break;
    }
  });
}
