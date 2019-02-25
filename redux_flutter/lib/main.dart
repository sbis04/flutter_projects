import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';

void main() => runApp(MyApp());

// Immutable class which takes one parameter, that is "counter"
@immutable
class AppState {
  final counter;
  AppState(this.counter);
}

// Define the methods that we want in our application
// [We can have multiple actions here]
enum Actions { Increment }

// PURE FUNCTION
// It takes two parameters, one is the previous state and other is
// the action that we want to perform
AppState reducer(AppState prev, action) {
  // If the Action is Increment then return the new AppState with
  // the new counter

  if (action == Actions.Increment) {
    // defining what the Action Increment does,
    // that is increase the counter by one
    return AppState(prev.counter + 1);
  }
  // otherwise return the previous state
  return prev;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final store = Store(reducer, initialState: AppState(0));

  @override
  Widget build(BuildContext context) {
    // Wrapping Scaffold with StoreProvider
    // which takes an attribute store
    return StoreProvider(
      store: store,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Redux App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              // This is used to refresh the widget with
              // the new data from the store
              StoreConnector<AppState,int>(
                converter: (store) => store.state.counter,
                builder: (context, counter) => Text(
                      '$counter',
                      style: Theme.of(context).textTheme.display1,
                    ),
              )
            ],
          ),
        ),
        floatingActionButton: StoreConnector<AppState, VoidCallback>(
          converter: (store) => () {
                return store.dispatch(Actions.Increment);
              },
          builder: (context, callback) => FloatingActionButton(
                onPressed: callback,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
        ),
      ),
    );
  }
}
