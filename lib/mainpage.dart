import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final double angka = 99;
  final List<int> myList = [1, 9, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extension Learn"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Bilangan : " & angka.negate().toString(),
              style: TextStyle(fontSize: 50),
            ),
            Text("List : " & myList.midElement.toString()),
          ],
        ),
      ),
    );
  }
}

//EXTENSION
extension ListExtension<T> on List {
  T get midElement =>
      (this.length == 0) ? null : this[(this.length / 2).floor()];
}

extension NumberExtension<T extends num> on num {
  T negate() => this * -1;
}

extension StringExtension on String {
  String operator &(String other) => this + " " + other;
}
