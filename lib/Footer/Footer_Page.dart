import 'package:flutter/material.dart';

import 'Desktop_Footer_Page.dart';
import 'Mobile_Footer_Page.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopFooter();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopFooter();
        } else {
          return MobileFooter();
        }
      },
    );
  }
}
