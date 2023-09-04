import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Explore_Provider.dart';

Widget ServiceCard(double width,String text,String image,int index) {
  return Consumer<ExploreProvider>(
    builder: (context,value,child) {
      return Container(
        // color: Colors.black12,
        height: 290,
        width: width,
        child: MouseRegion(
          onEnter: (event) {
            if(index==0){
              value.zoomAnimation1(true);
              value.onHoverExplore1(true);
            }else if(index==1){
              value.zoomAnimation2(true);
              value.onHoverExplore2(true);
            }else{
              value.zoomAnimation3(true);
              value.onHoverExplore3(true);
            }

          },
          onExit:(event) {
            if(index==0){
              value.zoomAnimation1(false);
              value.onHoverExplore1(false);
            }else if(index==1){
              value.zoomAnimation2(false);
              value.onHoverExplore2(false);
            }else{
              value.zoomAnimation3(false);
              value.onHoverExplore3(false);
            }

          },
          child: Stack(
            children: [
              SizedBox(
                width: width,
                height: 260,
                    child:InteractiveViewer(
                      boundaryMargin: EdgeInsets.all(double.infinity),
                      minScale: 1.0,
                      maxScale: 1.1,
                      scaleEnabled: true,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 1200),
                        curve: Curves.easeInOut,
                        transformAlignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..scale(index == 0 ? value.zoomLevel1 ? 1.3 : 1.0 :
                              index == 1 ? value.zoomLevel2 ? 1.3 : 1.0 :
                              value.zoomLevel3 ? 1.3 : 1.0
                          ),
                        child: Image.asset(
                            image,
                            fit: BoxFit.cover
                        ),
                      ),
                    )),
              Positioned(
                left: width/9,
                right: width/9,
                top: 223,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 1200),
                  height: 66,
                  width: width/1.5,
                  decoration: BoxDecoration(
                  color:index==0? value.exploreButton1? Colors.grey:Colors.white:
                      index==1? value.exploreButton2? Colors.grey:Colors.white:
                      value.exploreButton3? Colors.grey:Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 2,
                        blurRadius: 2 ,
                        offset: Offset.fromDirection(.1,.5)
                      )
                    ]
                  ),
                  child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
                ),
              ),
              Positioned(
                left: width/9,
                right: width/9,
                top: 223,
                child: AnimatedContainer(
                  alignment: Alignment.bottomCenter,
                  duration: Duration(milliseconds: 1200),
                  margin:index==0? value.exploreButton1?EdgeInsets.only(top: 60,):EdgeInsets.zero:
                  index==1?value.exploreButton2?EdgeInsets.only(top: 60,):EdgeInsets.zero:
                  value.exploreButton3?EdgeInsets.only(top: 60,):EdgeInsets.zero,
                  height:index == 0 ? value.exploreButton1?6:66:
                  index==1? value.exploreButton2?6:66:
                  value.exploreButton3?6:66,
                  width: width/1.5,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    boxShadow:index==0?value.exploreButton1?[]:[
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 2,
                        blurRadius: 2 ,
                        offset: Offset.fromDirection(.1,.5)
                      )
                    ]:
                        index==1?value.exploreButton2?[]:[
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 2,
                              blurRadius: 2 ,
                              offset: Offset.fromDirection(.1,.5)
                          )
                        ]:
                        value.exploreButton3?[]:[
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 2,
                              blurRadius: 2 ,
                              offset: Offset.fromDirection(.1,.5)
                          )
                        ],
                  ),
                  child: Center(child: Text(
                      index==0?value.exploreButton1?"":text:
                      index ==1 ?value.exploreButton2?"":text:
                      value.exploreButton3?"":text
                  )),
                ),
              ),

            ],
          ),
        ),
      );
    }
  );
}