import 'package:flutter/cupertino.dart';


class NumberProvider extends ChangeNotifier {
  List<int> number = [1, 2, 3, 4];

  void Add() {
    int last = number.last;
    number.add(last + 1);
    notifyListeners();
  }
}