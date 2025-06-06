import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

// This is a simple Flutter application that displays a welcome message
class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;

  void increaseStrength() {
    int newStrength = strength + 1;
    if (newStrength > 5) {
      // Limit strength to a maximum of 5
      newStrength = 0;
    }
    // Logic to increase coffee strength
    print('Increasing coffee strength by 1');
    return setState(() {
      strength = newStrength;
    });
  }

  void increaseSugar() {
    int newSugar = sugar + 1;
    if (newSugar > 5) {
      // Limit sugar to a maximum of 5
      newSugar = 0;
    }
    // Logic to increase coffee strength
    print('Increasing coffee sugar by 1');
    return setState(() {
      sugar = newSugar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText("Strengeth: "),

            if (strength == 0) const StyledBodyText('No strength'),

            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                height: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseStrength, child: const Text('+')),
          ],
        ),
        Row(
          children: [
            Text("Sugars: "),

            if (sugar == 0)
              const Text('No sugar', style: TextStyle(color: Colors.brown)),

            for (int i = 0; i < sugar; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                height: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseSugar, child: const Text('+')),
          ],
        ),
      ],
    );
  }
}
