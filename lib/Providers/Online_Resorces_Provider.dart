import 'package:flutter/material.dart';

class OnlineResorcesProvider extends ChangeNotifier{

  bool resorceHover1 = false;
  bool resorceHover2 = false;
  bool resorceHover3 = false;
  bool resorceHover4 = false;
  bool resorceHover5 = false;
  bool resorceHover6 = false;
  bool resorceHover7 = false;
  bool resorceHover8 = false;
  bool resorceHover9 = false;
  bool resorceHover10 = false;
  bool resorceHover11 = false;
  bool resorceHover12 = false;


  void resorceAnimation1(bool value){
    if(resorceHover1 != value){
      resorceHover1 = value;
      notifyListeners();
    }
  }
  void resorceAnimation2(bool value){
    if(resorceHover2 != value){
      resorceHover2 = value;
      notifyListeners();
    }
  }
  void resorceAnimation3(bool value){
    if(resorceHover3 != value){
      resorceHover3 = value;
      notifyListeners();
    }
  }
  void resorceAnimation4(bool value){
    if(resorceHover4 != value){
      resorceHover4 = value;
      notifyListeners();
    }
  }
  void resorceAnimation5(bool value){
    if(resorceHover5 != value){
      resorceHover5 = value;
      notifyListeners();
    }
  }
  void resorceAnimation6(bool value){
    if(resorceHover6 != value){
      resorceHover6 = value;
      notifyListeners();
    }
  }
  void resorceAnimation7(bool value){
    if(resorceHover7 != value){
      resorceHover7 = value;
      notifyListeners();
    }
  }
  void resorceAnimation8(bool value){
    if(resorceHover8 != value){
      resorceHover8 = value;
      notifyListeners();
    }
  }
  void resorceAnimation9(bool value){
    if(resorceHover9 != value){
      resorceHover9 = value;
      notifyListeners();
    }
  }
  void resorceAnimation10(bool value){
    if(resorceHover10 != value){
      resorceHover10 = value;
      notifyListeners();
    }
  }
  void resorceAnimation11(bool value){
    if(resorceHover11 != value){
      resorceHover11 = value;
      notifyListeners();
    }
  }
  void resorceAnimation12(bool value){
    if(resorceHover12 != value){
      resorceHover12 = value;
      notifyListeners();
    }
  }

}