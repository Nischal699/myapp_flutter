import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Coffee Shop'),
          backgroundColor: Colors.brown[800],
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            "Hello, welcome to my coffee shop!And you are doing great!",
          ),
        ),
      ),
    ),
  );
}
// This is a simple Flutter application that displays a welcome message