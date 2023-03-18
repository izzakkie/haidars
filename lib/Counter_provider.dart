import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;
// getter = gabisa diakses di class lain
  int get counter => _counter;
//setter = mengubah variable dari class ini
  void increment() {
    _counter++;
    notifyListeners(); //
  }
}
