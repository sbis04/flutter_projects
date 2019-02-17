import 'package:sim_u_duck_dart/duck.dart';
import 'package:sim_u_duck_dart/flybehaviour/fly_with_wings.dart';
import 'package:sim_u_duck_dart/quackbehavior/quack_quack.dart';

// THIS is called "mixins", "with" keyword
class RedheadDuck extends Duck with QuackQuack, FlyWithWings{}