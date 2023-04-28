import 'package:flutter/cupertino.dart';

class PickDateProvider with ChangeNotifier {
  DateTime _selectedDate = DateTime.now();
  void pickDate(date) {
    _selectedDate = date;
    notifyListeners();
  }
}