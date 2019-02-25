// import 'package:meta/meta.dart'; FOR USING @required

String page0(String name)=>"On your return trip from studying Saturn\'s rings, you hear a distress signal that seems to be coming from the surface of Mars. It\'s strange because there hasn\'t been a colony there in years. Even stranger, it\'s calling you by name: \"Help me,$name, you\'re my only hope.";
const String page0_choice1 = "Stop and investigate"; //page1
const String page0_choice2 = "Continue home to Earth"; //page2

String page1(String name) => "You deftly land your ship near where the distress signal originated. You didn\'t notice anything strange on your fly-by, but there is a cave in front of you. Behind you is an abandoned rover from the early 21st century.";
const String page1_choice1 = "Explore the cave"; //page3
const String page1_choice2 = "Explore the rover"; //page4

String page2(String name) => "You continue your course to Earth. Two days later, you receive a transmission from HQ saying that they have detected some sort of anomaly on the surface of Mars near an abandoned rover. They ask you to investigate, but ultimately the decision is yours because your mission has already run much longer than planned and supplies are low.";
const String page2_choice1 = "Head back to Mars to investigate"; //page1
const String page2_choice2 = "Continue home to Earth"; //page6 //ending2

String page3(String name) => "Your EVA suit is equipped with a headlamp, which you use to navigate the cave. After searching for a while your oxygen levels are starting to get pretty low. You know you should go refill your tank, but there\'s a very faint light up ahead.";
const String page3_choice1 = "Refill at ship and explore the rover";//page4
const String page3_choice2 = "Continue towards the faint light"; //page5 //ending1

String page4(String name) => "The rover is covered in dust and most of the solar panels are broken. But you are quite surprised to see the on-board system booted up and running. In fact, there is a message on the screen: \"$name, come to 28.543436, -81.369031.\" Those coordinates aren\'t far, but you don\'t know if your oxygen will last for a trip there and back.";
const String page4_choice1 = "Explore the coordinates"; //page5 //ending1
const String page4_choice2 = "Return to Earth"; //page6 //ending2

String page5(String name) => "After a long walk slightly uphill, you end up at the top of a small crater. You look around, and are overjoyed to see your favorite android, $name-S1124. It had been lost on a previous mission to Mars! You take it back to your ship and fly back to Earth.";

String page6() => "You arrive home on Earth. While your mission was a success, you forever wonder what was sending that signal. Perhaps a future mission will be able to investigate…";
const String story_image = "Story Image";
const String play_again_buttontext = "Play Again!";
