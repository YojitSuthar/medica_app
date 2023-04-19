import 'package:flutter/material.dart';

class ButtonProvider extends ChangeNotifier{

  bool change=false;

  void onChange(int index){
    if(index==2){
      change=true;
      notifyListeners();
    }
    else{
      change=false;
      notifyListeners();
    }
  }
}