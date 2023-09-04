import 'package:flutter/material.dart';

import '../Constants/News_Card.dart';

class MobileNewsPage extends StatelessWidget {
  const MobileNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return SizedBox(
      // height: 800,
      width: width,
      child: Column(
        children: [
          Text("Latest News & Articles\nFrom The Blog",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,height: 1.5),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 33,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width/36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NewsCard(width,"assets/blog-3.png","assets/primage.png","Several expats arrested on charges of possessing narcotics, theft in",0),
                NewsCard(width,"assets/blog-2.png","assets/primage.png","Several expats arrested on charges of possessing narcotics, theft in",1),
                NewsCard(width,"assets/blog-1.png","assets/primage.png","Several expats arrested on charges of possessing narcotics, theft in",2),

              ],
            ),
          )
        ],
      ),
    );
  }
}
