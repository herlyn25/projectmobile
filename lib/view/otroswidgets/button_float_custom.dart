import 'package:flutter/material.dart';

class ButtonFloatCustom extends StatelessWidget {
  final Function increment;
  final Function decrement;
  final Function reset;
  const ButtonFloatCustom(
      {Key? key,
      required this.increment,
      required this.reset,
      required this.decrement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: sort_child_properties_last
      children: [
        FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () => increment(),
            child: const Icon(Icons.add)),
        FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () => reset(),
            child: const Icon(Icons.lock_reset)),
        FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () => decrement(),
            child: const Icon(Icons.remove)),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
