import 'package:sim_u_duck_dart/duck.dart';

class RubberDuck extends Duck {
  bubble() {
    print("blob blob blob blob I hate soap");
  }

  // Override quack
  @override
  quack() {
    print("sqeak sqeak");
  }

  @override
  fly() {
    print("I don't fly");
    return null;
  }

  @override
  quackable() {
    print("quack quack quack");
    return null;
  }

}