import 'package:flutter/material.dart';

// This is a simple Flutter application that displays a welcome message
class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  void increaseStrength() {
    // Logic to increase coffee strength
    print('Increasing coffee strength by 1');
  }

  void increaseSugar() {
    // Logic to increase coffee strength
    print('Increasing coffee sugar by 1');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Strengeth: "),
            Text('3'),
            Image.asset(
              'assets/img/coffee_bean.png',
              width: 25,
              height: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown[800],
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            Text("Sugars: "),
            Text('3'),
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              height: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown[800],
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugar,
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
