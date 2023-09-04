import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Explore_City_Provider.dart';
import 'Colors.dart';

Widget ExploreCityCard(double width,String image,String name,int index,String content){
  return Consumer<ExploreCityProvider>(
    builder: (context,value,child) {
      return MouseRegion(
        onEnter: (event) {
          if(index==0){
            value.cityAnimation1(true);
          }else if(index == 1){
            value.cityAnimation2(true);
          }else{
            value.cityAnimation3(true);
          }
        },
        onExit: (event) {
          if(index==0){
            value.cityAnimation1(false);
          }else if(index == 1){
            value.cityAnimation2(false);
          }else{
            value.cityAnimation3(false);
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1500),
          height: 290,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill
            )
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 1500),
              height:index==0?value.cityHover1? 290:62:
              index==1?value.cityHover2? 290:62:
              value.cityHover3? 290:62,
              width: width,
              color: litebalck,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  index ==0? value.cityHover1? SizedBox(height: 20,):SizedBox():
                  index ==1? value.cityHover2? SizedBox(height: 20,):SizedBox():
                  value.cityHover3? SizedBox(height: 20,):SizedBox(),
                  Padding(
                    padding: EdgeInsets.only(left: width/10,top: 12),
                    child: Text(name,style: const TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w800),),
                  ),
                  index==0? value.cityHover1? Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width/10,vertical:25 ),
                    child: SizedBox(
                      // height: 50,
                      width: width,
                      child: Text(content,style: TextStyle(color: Colors.white),textAlign: TextAlign.justify),
                    ),
                  ):SizedBox():
                  index==1? value.cityHover2? Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width/10,vertical:25 ),
                    child: SizedBox(
                      // height: 50,
                      width: width,
                      child: Text(content,style: TextStyle(color: Colors.white),textAlign: TextAlign.justify),
                    ),
                  ):SizedBox():
                  value.cityHover3? Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width/10,vertical: 25),
                    child: SizedBox(
                      // height: 50,
                      width: width,
                      child: Text(content,style: TextStyle(color: Colors.white),textAlign: TextAlign.justify),
                    ),
                  ):SizedBox(),
                ],
              ),
            ),
          ),
        ),
      );
    }
  );
}