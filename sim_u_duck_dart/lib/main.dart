// Always remember to import
import 'package:sim_u_duck_dart/mallard_duck.dart';
import 'package:sim_u_duck_dart/redhead_duck.dart';
import 'package:sim_u_duck_dart/rubber_duck.dart';

main() {
  MallardDuck mallardDuck = MallardDuck();
  RedheadDuck redheadDuck = RedheadDuck();
  RubberDuck rubberDuck = RubberDuck();

  rubberDuck.swim();
  rubberDuck.quack();
  rubberDuck.bubble();

  mallardDuck.fly();
  redheadDuck.fly();
  rubberDuck.fly();
}