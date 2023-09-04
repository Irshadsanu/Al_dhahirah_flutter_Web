import 'package:flutter/material.dart';

import 'Desktop_Services_Page.dart';
import 'Mobile_Service_Page.dart';

class ExploreServices extends StatelessWidget {
  const ExploreServices({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopServices();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopServices();
        } else {
          return MobileServices();
        }
      },
    );
  }
}
