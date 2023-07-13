import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var beginAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colors,
  });

  const GradientContainer.purple({super.key})
      : colors = const [
          Color.fromARGB(55, 26, 2, 80),
          Color.fromARGB(55, 7, 74, 98),
        ];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
