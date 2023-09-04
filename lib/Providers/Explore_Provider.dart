import 'package:flutter/material.dart';

class ExploreProvider extends ChangeNotifier{


  bool zoomLevel1 = false;
  bool zoomLevel2 = false;
  bool zoomLevel3 = false;


  // void zoomAnimation (var event){
  //   zoomLevel = !zoomLevel;
  //   notifyListeners();
  // }

  void zoomAnimation1(bool value) {
    if (zoomLevel1 != value) {
      zoomLevel1 = value;
      notifyListeners();
    }
  }


  void zoomAnimation2(bool value) {
    if (zoomLevel2 != value) {
      zoomLevel2 = value;
      notifyListeners();
    }
  }


  void zoomAnimation3(bool value) {
    if (zoomLevel3 != value) {
      zoomLevel3 = value;
      notifyListeners();
    }
  }

 bool exploreButton = false;
 bool exploreButton1 = false;
 bool exploreButton2 = false;
 bool exploreButton3 = false;

   AnimationController ?animationController;


  void onHoverExplore(bool value) {
    if (exploreButton != value) {
      exploreButton = value;
      notifyListeners();
    }
  }
  void onHoverExplore1(bool value) {
    if (exploreButton1 != value) {
      exploreButton1 = value;
      notifyListeners();
    }
  }
  void onHoverExplore2(bool value) {
    if (exploreButton2 != value) {
      exploreButton2 = value;
      notifyListeners();
    }
  }
  void onHoverExplore3(bool value) {
    if (exploreButton3 != value) {
      exploreButton3 = value;
      notifyListeners();
    }
  }

}