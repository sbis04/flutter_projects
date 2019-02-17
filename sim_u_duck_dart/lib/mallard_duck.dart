import 'package:sim_u_duck_dart/duck.dart';
import 'package:sim_u_duck_dart/flybehaviour/fly_with_wings.dart';
import 'package:sim_u_duck_dart/quackbehavior/quack_quack.dart';

//TODO: use mixins
//class MallardDuck extends Duck {
//  MallardDuck()
//      : super(
//          flyBehavior: FlyWithWings(),
//          quackBehavior: QuackQuack(),
//        );
//}

class MallardDuck extends Duck with QuackQuack, FlyWithWings {}