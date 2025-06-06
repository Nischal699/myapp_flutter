import 'package:flutter/material.dart';

// This is a simple Flutter application that displays a welcome message
class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Strengeth: "),
            Text('3'),
            Image.asset('assets/img/1.jpg', width: 25, height: 25),
            SizedBox(width: 50),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sugars: "),
            Text('3'),
            Image.asset('assets/img/2.jpg', width: 25, height: 25),
            SizedBox(width: 50),
          ],
        ),
      ],
    );
  }
}
