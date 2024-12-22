import 'package:flutter/material.dart';
import 'package:flutter_state_test/widgets/counter_inherited_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton(
        onPressed: CounterInheritedWidget.of(context).incrementCounterValue,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: const Icon(Icons.plus_one),
        ),
      ),
    );
  }
}
