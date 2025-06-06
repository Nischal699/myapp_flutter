import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

//// This is a simple Flutter application that displays a welcome message
class Sandbox extends StatelessWidget {
  const Sandbox({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox App'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(width: 100, color: Colors.red, child: Text("One")),
          Container(width: 100, color: Colors.green, child: Text("Two")),
          Container(width: 100, color: Colors.blue, child: Text("Three")),
          Container(width: 100, color: Colors.black, child: Text("Four")),
        ],
      ),
    );
  }
}
