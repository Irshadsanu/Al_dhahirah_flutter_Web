import 'package:flutter/material.dart';

class ExploreCityProvider extends ChangeNotifier{

  bool cityHover1 = false;
  bool cityHover2 = false;
  bool cityHover3 = false;

  void cityAnimation1(bool value){
    if(cityHover1 != value){
    cityHover1 = value;
    notifyListeners();
    }

  }
  void cityAnimation2(bool value){
    if(cityHover2 != value){
    cityHover2 = value;
    notifyListeners();
    }
  }
  void cityAnimation3(bool value){
    if(cityHover3 != value){
    cityHover3 = value;
    notifyListeners();
    }
  }

}