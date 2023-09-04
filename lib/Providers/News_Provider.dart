import 'package:flutter/material.dart';

class newsProvider extends ChangeNotifier{



  bool newsHover1 = false;
  bool newsHover2 = false;
  bool newsHover3 = false;

  void newsAnimation1(bool value){
    if(newsHover1 != value){
    newsHover1 = value;
    notifyListeners();
    }
  }
  void newsAnimation2(bool value){
    if(newsHover2 != value){
    newsHover2 = value;
    notifyListeners();
    }
  }
  void newsAnimation3(bool value){
    if(newsHover3 != value){
    newsHover3 = value;
    notifyListeners();
    }
  }


}