import 'package:flutter/material.dart';

import 'Desktop_Online_Page.dart';
import 'Mobile_Online_Page.dart';

class OnlineResorces extends StatelessWidget {
  const OnlineResorces({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopOnlinePage();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopOnlinePage();
        } else {
          return MobileOnlinePage();
        }
      },
    );
  }
}
