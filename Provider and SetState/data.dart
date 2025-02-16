import 'package:flutter/material.dart';

class data extends ChangeNotifier{
  int value = 0;
  increament()
  {
    value++;
    notifyListeners();
  }
}
