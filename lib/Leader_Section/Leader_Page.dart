import 'package:flutter/material.dart';

import 'Desktop_Leader_Page.dart';
import 'Mobile_Leader_Page.dart';

class LeaderPage extends StatelessWidget {
  const LeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopLeader();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopLeader();
        } else {
          return MobileLeader();
        }
      },
    );
  }
}
