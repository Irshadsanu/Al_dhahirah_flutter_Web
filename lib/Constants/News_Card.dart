import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/News_Provider.dart';
import 'Colors.dart';

Widget NewsCard (double width,String image,String primage,String heading,int index) {
  return Consumer<newsProvider>(
    builder: (context,value,child) {
      return MouseRegion(
        onEnter: (event) {
          if(index==0){
            value.newsAnimation1(true);
          }else if(index == 1){
            value.newsAnimation2(true);
          }else{
            value.newsAnimation3(true);
          }
        },
        onExit: (event) {
          if(index==0){
            value.newsAnimation1(false);
          }else if(index == 1){
            value.newsAnimation2(false);
          }else{
            value.newsAnimation3(false);
          }

        },
        child: AnimatedContainer(
          duration: Duration(milliseconds:1500 ),
          color: index==0? value.newsHover1?lightGrey:offWhite:
          index==1? value.newsHover2?lightGrey:offWhite:
          value.newsHover3?lightGrey:offWhite,
          width: width,
          height: 504,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width,
                height: 290,
                child: InteractiveViewer(
                  boundaryMargin: EdgeInsets.all(double.infinity),
                  minScale: 1.0,
                  maxScale: 1.1,
                  scaleEnabled: true,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.easeInOut,
                    transformAlignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..scale(index == 0 ? value.newsHover1 ? 1.3 : 1.0 :
                      index == 1 ? value.newsHover2 ? 1.3 : 1.0 :
                      value.newsHover3 ? 1.3 : 1.0
                      ),
                    child: Image.asset(
                        image,
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal:width/8,vertical: 18 ),
                child: SizedBox(
                  height: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment:Alignment.topLeft ,
                        child: SizedBox(
                          width:width/1.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(primage),
                              ),
                              Text("by\nAdmin",style: TextStyle(fontSize: 14,),),
                              Container(color: dividerColor,width: 2,height: 43,),
                              Image.asset("assets/messageicon.png",scale: 2.8),
                              Text("2 Comments",style: TextStyle(fontSize: 12,),),
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(height: 19,),
                      Text(heading,
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,),
                      ),
                      // SizedBox(height: 26,),
                      Container(width: width,height: 2,color: Colors.grey),
                      // SizedBox(height: 23,),
                      AnimatedContainer(
                        alignment: Alignment.topLeft,
                        duration: const Duration(milliseconds: 1500),
                        width:index==0?  value.newsHover1? width: width/3:
                        index==1? value.newsHover2? width: width/3:
                        value.newsHover3? width: width/3,
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text("See more",style: TextStyle(fontSize: 13),),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_right_alt)
                          ],
                        ),
                      ),
                      // SizedBox(height: 25,)

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  );
}