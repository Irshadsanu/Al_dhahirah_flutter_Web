import 'package:flutter/material.dart';

import '../Constants/News_Card.dart';

class DesktopNewsPage extends StatelessWidget {
  const DesktopNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return SizedBox(
      height: 700,
      width: width,
      child: Column(
        children: [
          Text("LATEST NEWS",style: TextStyle(color:Colors.black87,fontWeight: FontWeight.w400,fontSize: 12),),
          Icon(Icons.star,color: Colors.green,),
          Text("Latest News & Articles\nFrom The Blog",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,height: 1.5),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 33,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width/18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            NewsCard(width/3.5,"assets/blog-3.png","assets/primage.png","Several expats arrested on charges of possessing narcotics, theft in",0),
            NewsCard(width/3.5,"assets/blog-2.png","assets/primage.png","Several expats arrested on charges of possessing narcotics, theft in",1),
            NewsCard(width/3.5,"assets/blog-1.png","assets/primage.png","Several expats arrested on charges of possessing narcotics, theft in",2),

              ],
            ),
          )
        ],
      ),
    );
  }
}
