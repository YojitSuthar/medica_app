
import 'package:flutter/material.dart';

class DropDown extends ChangeNotifier{

  String update(String value,String dropValue) {
    dropValue=value;
    notifyListeners();
    return dropValue;
  }
}