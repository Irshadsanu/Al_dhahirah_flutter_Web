import 'package:flutter/material.dart';

import 'Desktop_Landing_Page.dart';
import 'Mobile_Landing_Page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopLanding();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopLanding();
        } else {
          return MobileLanding();
        }
      },
    );
  }
}
