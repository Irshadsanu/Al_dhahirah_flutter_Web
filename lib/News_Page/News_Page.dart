import 'package:flutter/material.dart';

import 'Desktop_News_Page.dart';
import 'Mobile_News_Page.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNewsPage();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNewsPage();
        } else {
          return MobileNewsPage();
        }
      },
    );
  }
}
