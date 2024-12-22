import 'package:flutter/material.dart';
import 'package:flutter_state_test/widgets/counter_inherited_widget.dart';
import 'widgets/button_first_level.dart';
import 'widgets/counter_first_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _counter = 0;

  void _incrementCounter() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    return CounterInheritedWidget(
      counterValue: _counter,
      incrementCounterValue: _incrementCounter,
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal[100],
          appBar: AppBar(
            title: Text('States'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ButtonFirstLevel(),
              const CounterFirstWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
