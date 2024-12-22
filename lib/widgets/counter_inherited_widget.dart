import 'package:flutter/material.dart';

class CounterInheritedWidget extends InheritedWidget {
  CounterInheritedWidget({
    required this.counterValue,
    required this.incrementCounterValue,
    required super.child,
  });

  final int counterValue;
  final VoidCallback incrementCounterValue;

  @override
  bool updateShouldNotify(CounterInheritedWidget oldWidget) =>
      counterValue != oldWidget.counterValue;

  static CounterInheritedWidget of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>()!;
}
