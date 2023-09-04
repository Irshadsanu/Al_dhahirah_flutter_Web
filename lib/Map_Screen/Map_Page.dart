import 'package:flutter/material.dart';

import 'Desktop_Map_Page.dart';
import 'Mobile_Map_Page.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopMap();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopMap();
        } else {
          return MobileMap();
        }
      },
    );
  }
}
