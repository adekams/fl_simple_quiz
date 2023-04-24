import 'package:flutter/material.dart';
import 'package:adv_basics/dashboard.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(132, 70, 240, 1),
                Color.fromRGBO(72, 32, 184, 1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Dashboard(),
        ),
      ),
    ),
  );
}
