import 'package:flutter/material.dart';

// This is a simple Flutter application that displays a welcome message
class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [Text("Strengeth: "), Text('3'), SizedBox(width: 50)]),
        Row(children: [Text("Sugars: "), Text('3'), SizedBox(width: 50)]),
      ],
    );
  }
}
