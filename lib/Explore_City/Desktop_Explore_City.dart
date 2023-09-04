import 'package:flutter/material.dart';

import '../Constants/Explore_City_Card.dart';

class DesktopCity extends StatelessWidget {
  const DesktopCity({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
        children: [
          Text("Explore City Highlights",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
          // SizedBox(height: 42,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width/12,vertical: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExploreCityCard(width/3.8,"assets/city-2.png","Ibri",0,"This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit."),
                ExploreCityCard(width/3.8,"assets/city-6.png","Dhank",1,"This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit."),
                ExploreCityCard(width/3.8,"assets/city-1.png","Yankul",2,"This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit."),
              ],
            ),
          )
        ],
      ),
    );
  }
}
