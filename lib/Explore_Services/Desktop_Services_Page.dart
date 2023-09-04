import 'package:al_dhahirah/Providers/Explore_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/Colors.dart';
import '../Constants/Service_Card.dart';

class DesktopServices extends StatelessWidget {
  const DesktopServices({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: 530,
          width: width,
          color: Colors.white,
        ),
        Container(
          color: litepink,
          height: 360,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: width/45,vertical: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("EXPLORE THE\nUNEXPLORED",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800)),
                Consumer<ExploreProvider>(
                  builder: (context,value,child) {
                    return MouseRegion(
                      onEnter: (event) {
                        value.onHoverExplore(true);
                      },
                      onExit: (event) {
                        value.onHoverExplore(false);
                      },
                      child: Stack(
                        children: [
                          AnimatedContainer(
                            alignment: Alignment.bottomCenter,
                            curve: Curves.linearToEaseOut,
                            // transform: Matrix4.rotationZ(0.5),
                            color: value.exploreButton? Colors.white:Colors.grey,
                            width: width/10,
                            height: 47,
                            duration: Duration(milliseconds: 900),
                            child:  Center(child: FittedBox(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text("Explore Services",style: TextStyle(
                                  fontSize: 15,
                                  color:value.exploreButton? Colors.grey:Colors.white
                              ),),
                            ))),),
                          AnimatedContainer(
                            curve: Curves.linearToEaseOut,
                            transformAlignment: Alignment.bottomCenter,
                            margin: value.exploreButton?EdgeInsets.only(top: 44):EdgeInsets.zero,
                            alignment: Alignment.bottomCenter,
                            // transform: Matrix4.rotationZ(0.5),
                            color:  Colors.grey,
                            width: width/10,
                            height: value.exploreButton? 3:47,
                            duration: const Duration(milliseconds: 900),
                            child:  Center(child: FittedBox(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text("Explore Services",style: TextStyle(
                                  fontSize: 15,
                                  color:value.exploreButton? Colors.grey:Colors.white
                              ),),
                            ))),),
                        ],
                      ),
                    );
                  }
                )
              ],
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left:  width/12,right: width/12,top: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ServiceCard(width/4,"Tourist Destination","assets/city-5.png",0),
              ServiceCard(width/4,"City Visitors Guide","assets/city-4.png",1),
              ServiceCard(width/4,"Administration","assets/city-3.png",2),
            ],
          ),
        )
      ],
    );
  }
}
