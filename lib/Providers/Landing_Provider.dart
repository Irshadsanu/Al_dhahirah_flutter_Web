import 'package:flutter/material.dart';

class LandingProvider extends ChangeNotifier{

  bool isDrawerOpen = false;

  void toggleDrawer() {
    isDrawerOpen = !isDrawerOpen;
    notifyListeners();
  }


  bool vector1Hover = false;
  bool vector2Hover = false;
  bool vector3Hover = false;
  bool vector4Hover = false;
  bool vector5Hover = false;
  bool vector6Hover = false;


  bool exploreHover = false;


  void onExploreHover(bool value) {
    if (exploreHover != value) {
      exploreHover = value;
      notifyListeners();
    }
  }


  void onVectorHover1(bool value) {
    if (vector1Hover != value) {
      vector1Hover = value;
      notifyListeners();
    }
  }
  void onVectorHover2(bool value) {
    if (vector2Hover != value) {
      vector2Hover = value;
      notifyListeners();
    }
  }
  void onVectorHover3(bool value) {
    if (vector3Hover != value) {
      vector3Hover = value;
      notifyListeners();
    }
  }
  void onVectorHover4(bool value) {
    if (vector4Hover != value) {
      vector4Hover = value;
      notifyListeners();
    }
  }
  void onVectorHover5(bool value) {
    if (vector5Hover != value) {
      vector5Hover = value;
      notifyListeners();
    }
  }
  void onVectorHover6(bool value) {
    if (vector6Hover != value) {
      vector6Hover = value;
      notifyListeners();
    }
  }
}