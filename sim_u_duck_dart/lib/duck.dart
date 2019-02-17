import 'package:sim_u_duck_dart/flybehaviour/fly_behavior.dart';
import 'package:sim_u_duck_dart/quackbehavior/quack_behavior.dart';
import 'package:meta/meta.dart'; // allows the @required parameter

// TODO: use mixins
//abstract class Duck {
//  FlyBehavior _flyBehavior; // Declaring private variable using "_" in front
//  QuackBehavior _quackBehavior;
//
//  // Duck({QuackBehavior quackBehavior, FlyBehavior flyBehavior}) ; Positional Parameter
//  // Duck({QuackBehavior quackBehavior, FlyBehavior flyBehavior})
//
//  // Constructor
//  Duck({ @required QuackBehavior quackBehavior,
//         @required FlyBehavior flyBehavior, // Named parameter
//  })
//    : this._flyBehavior = flyBehavior, // Initializer
//      this._quackBehavior = quackBehavior;
//
//  // Ducks should fly
//  fly() {
//    _flyBehavior.fly();
//  }
//
//  // Ducks should quack
//  quack() {
//    _quackBehavior.quack();
//  }
//
//  swim() {
//    print("Swim swim swim swim");
//  }
//
//}

abstract class Duck implements FlyBehavior, QuackBehavior{
  swim() {
    print("Swim swim swim swim");
  }
}