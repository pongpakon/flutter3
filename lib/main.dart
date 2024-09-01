import 'package:flutter/material.dart';
import 'package:simple_app/screens/latestRate.dart';
import 'package:simple_app/screens/convert.dart';

void main() {
  runApp(MaterialApp(
    title: "Exchange Currency",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Exchange Currency"),
      ),
      body: const LatestRate(),
    ),
  ));
}
