import 'package:flutter/material.dart';

import 'Desktop_Explore_City.dart';
import 'Mobile_City_Page.dart';

class ExploreCity extends StatelessWidget {
  const ExploreCity({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopCity();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopCity();
        } else {
          return MobileCity();
        }
      },
    );
  }
}
