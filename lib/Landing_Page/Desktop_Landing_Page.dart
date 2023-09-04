import 'dart:async';

import 'package:al_dhahirah/Constants/Colors.dart';
import 'package:al_dhahirah/Providers/Landing_Provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesktopLanding extends StatefulWidget {
  const DesktopLanding({super.key});

  @override
  State<DesktopLanding> createState() => _DesktopLandingState();
}

class _DesktopLandingState extends State<DesktopLanding>  with TickerProviderStateMixin  {


  List<String> listImage =  [

  ];

  late AnimationController _controller;
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;
  late Animation<Offset> _animation;
  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;
  late Animation<Offset> _animation3;
  late Animation<Offset> _animation4;
  bool isImageVisible = true;
  bool isImageVisible1 = true;
  bool isImageVisible2 = true;
  String CurrentText = "AL-DHAHIRAH";

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _controller3 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    );
    _controller4 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    );

    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(-1, 0),
    ).animate(_controller);

    _animation1=Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(-1, 0),
    ).animate(_controller1);

    _animation2=Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(-1, 0),
    ).animate(_controller2);

    _animation3=Tween<Offset>(
      begin: Offset(0, -3),
      end: Offset(0, 0),
    ).animate(_controller3);

    _animation4=Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset(0, 0),
    ).animate(_controller4);

    _controller3.forward();
    _controller4.forward();

    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        isImageVisible = !isImageVisible;
        // isImageVisible1 = !isImageVisible1;
        // isImageVisible2 = !isImageVisible2;
        if (!isImageVisible) {
          CurrentText = "IBRI";
          _controller.forward().then((value) => isImageVisible1 = !isImageVisible1);

        } else{
          _controller.reverse();

        }

        if(!isImageVisible1){
          CurrentText = "DHANK";
          _controller1.forward().then((value) {
            isImageVisible2 = !isImageVisible2;
            isImageVisible1 = !isImageVisible1;
            isImageVisible = !isImageVisible;
          },);

        }else{
          _controller1.reverse();

        }

        if(!isImageVisible2){
          CurrentText = "YANKUL";
          _controller2.forward().then((value) => isImageVisible2=!isImageVisible2);
        }else {
          _controller2.reverse();
        }
      });
    });

  }

  @override
  void dispose() {
    // _controller3./
    // _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {


    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SizedBox(
          child: Column(
            children: [
              Container(
                width: width,
                height: 650,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      gradientColor,
                      Colors.white,
                      Colors.white,
                      gradientColor
                    ],
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.only(right:width/15 ,left: width/15,bottom: hieght/3.7,top: 50),
                  child:SizedBox(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                     children: [
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: width/90),
                        child: SizedBox(
                          width: width/3.8,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Row(
                              children: [
                                SlideTransition(
                                  position: _animation,
                                  child: SizedBox(
                                    width: width/3.6,
                                    height: hieght*.92,
                                    child: Image.asset(
                                      "assets/city-6.png",fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                  SlideTransition(
                                  position:_animation ,
                                  child: Container(
                                    width:width/3.6 ,
                                      height: hieght*.92,
                                    decoration:  BoxDecoration(
                                      borderRadius:  BorderRadius.circular(15),
                                        image: const DecorationImage(image: AssetImage("assets/666.png"),fit: BoxFit.fill,)),
                                    child: const Center(
                                      child: Text("IBRI",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,),),
                                    )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: width/90),
                        child: SizedBox(
                          width: width/3.8,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Row(
                              children: [
                                SlideTransition(
                                  position: _animation1,
                                  child: SizedBox(
                                    width: width/3.6,
                                    height:  hieght*.92,
                                    child: Image.asset(
                                      "assets/city-7.png",fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SlideTransition(
                                  position:_animation1 ,
                                  child:Container(
                                      width:width/3.6 ,
                                      height: hieght*.92,
                                      decoration:  BoxDecoration(
                                          borderRadius:  BorderRadius.circular(15),
                                          image: const DecorationImage(image: AssetImage("assets/666.png"),fit: BoxFit.fill,)),
                                      child: const Center(
                                        child: Text("DHANK",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,),),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: width/90),
                        child: SizedBox(
                          width: width/3.8,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Row(
                              children: [
                                SlideTransition(
                                  position: _animation2,
                                  child: SizedBox(
                                    height:  hieght*.92,
                                    width: width/3.6,
                                    child: Image.asset(
                                      "assets/city-8.png",fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SlideTransition(
                                  position:_animation2,
                                  child:Container(
                                      width:width/3.6,
                                      height:  hieght*.92,
                                      decoration:  BoxDecoration(
                                          borderRadius:  BorderRadius.circular(15),
                                          image: const DecorationImage(image: AssetImage("assets/666.png"),fit: BoxFit.fill,)),
                                      child: const Center(
                                        child: Text("YANKUL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,),),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],),
                  )
                ),
    ),
              // TweenAnimationBuilder(
              //   builder: (context,value,child) {
              //     return Padding(
              //       padding: EdgeInsets.symmetric(horizontal: width/60),
              //       child: SizedBox(
              //         width: value,
              //         height: hieght/4,
              //         child: ClipRRect(
              //             borderRadius: BorderRadius.circular(20),
              //             child: Image.asset("assets/666.png",fit: BoxFit.cover,)),
              //       ),
              //     );
              //   }, tween: Tween<double>(begin: _isCentered ? 200.0 : 100.0, end: _containerWidth),
              //   duration: const Duration(milliseconds: 500),
              //
              // ),

              Container(
                height: 250,
                color: litepink,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 62),
                    child: Text("The Ministry of Health (MOH) is responsible for ensuring the availability of health care to"),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 390,
          left: width/3.5,
          right: width/3.5,
          child: SizedBox(
            width: width/2,
          height: 146,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                children: [
              Transform.rotate(angle: -3.15,child: Icon(Icons.arrow_right_alt,size: 32,)),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: gradientColor,
                        spreadRadius: 2,
                        blurRadius: 2,
                        blurStyle: BlurStyle.inner
                      )
                    ],
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      gradientColor,
                      Colors.white,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(5)
                ),
                height: 146,
                width: width/2.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // SizedBox(height: 15,),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 1200),
                      transitionBuilder: (Widget child, Animation<double> animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      child: Text(CurrentText,key:CurrentText == "IBRI"? ValueKey(1):CurrentText == "DHANK"?ValueKey(2):ValueKey(3),
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,),),
                    ),

                    // SizedBox(height: 10,),
                    SizedBox(
                      width: width/3.5,
                      child: Text("The Ministry of Health (MOH) is responsible for ensuring the availability of health care to",
                        style: TextStyle(color: Colors.grey.shade900),textAlign: TextAlign.center,
                      ),
                    ),
                    // SizedBox(height: 12,),
                    Consumer<LandingProvider>(
                      builder: (context,value,child) {
                        return MouseRegion(
                          onEnter: (event) {
                            value.onExploreHover(true);
                          },
                          onExit: (event) {
                            value.onExploreHover(false);
                          },
                          child: Container(
                            height: 25,
                            margin: EdgeInsets.only(bottom: 10),
                            width: width/18,
                            color:value.exploreHover? Colors.white:Colors.grey,
                            child: Center(child: FittedBox(child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: width/70),
                              child:  Text("Explore More",style: TextStyle(color: value.exploreHover? Colors.grey:Colors.white)),
                            ))),
                          ),
                        );
                      }
                    )
                  ],
                ),
              ),
              Icon(Icons.arrow_right_alt,size: 32,)
            ]),
          ),
        ),
        Positioned(
          left: width/75,
          right: width/75,
          top: 560,
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: width/75),
            width: width,
            height: 210,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: gradientColor,
                    spreadRadius: 4,
                    blurRadius: 4,
                  )
                ],
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    gradientColor,
                    Colors.white,
                    Colors.white,
                    gradientColor
                  ],
                ),
              image: DecorationImage(image: AssetImage("assets/background.png"),fit: BoxFit.fill)
            ),

            child: Consumer<LandingProvider>(
              builder: (context,value,child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround ,
                  children: [
                    MouseRegion(

                      onHover: (val) {
                        value.onVectorHover1(true);
                      },
                      opaque:true,
                      onExit : (val) {
                        value.onVectorHover1(false);
                      },
                      child: SizedBox(
                        height: 130,
                        width: width/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SlideTransition(
                              position: _animation3,
                                child: Image.asset("assets/vector-1.png")),
                            AnimatedContainer(duration: Duration(milliseconds: 600),height: value.vector1Hover?5 :25,),

                            SlideTransition(
                              position: _animation4,
                                child: Text("Your\nGovernment",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,))
                          ],
                        ),
                      ),
                    ),
                    MouseRegion(
                      onHover: (val) {
                        value.onVectorHover2(true);
                      },
                      opaque:true,
                      onExit : (val) {
                        value.onVectorHover2(false);
                      },
                      child: SizedBox(
                        height: 130,
                        width: width/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SlideTransition(
                              position: _animation3,
                                child: Image.asset("assets/vector-2.png")),
                            AnimatedContainer(duration: Duration(milliseconds: 600),height: value.vector2Hover?5 :25,),
                            SlideTransition(
                            position: _animation4,
                                child: const Text("Job and\nUnemployment",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 12),textAlign: TextAlign.center,))
                          ],
                        ),),
                    ),
                MouseRegion(
                onHover: (val) {
                value.onVectorHover3(true);
                },
                opaque:true,
                onExit : (val) {
                value.onVectorHover3(false);
                },
                      child: SizedBox(
                        height: 130,
                        width: width/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SlideTransition(
                              position: _animation3,
                                child: Image.asset("assets/vector-3.png")),
                            AnimatedContainer(duration: Duration(milliseconds: 600),height: value.vector3Hover?5 :25,),
                            SlideTransition(
                              position: _animation4,
                                child: Text("Business and\nIndustry",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,))
                          ],
                        ),
                      ),
                    ),
                MouseRegion(

                onHover: (val) {
                value.onVectorHover4(true);
                },
                opaque:true,
                onExit : (val) {
                value.onVectorHover4(false);
                },
                      child: SizedBox(
                        height: 130,
                        width: width/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SlideTransition(
                              position: _animation3,
                                child: Image.asset("assets/vector-4.png")),
                            AnimatedContainer(duration: Duration(milliseconds: 600),height: value.vector4Hover?5 :25,),
                            SlideTransition(
                              position: _animation4,
                                child: Text("Roads and\nTransport",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,))
                          ],
                        ),
                      ),
                    ),
                    MouseRegion(

                      onHover: (val) {
                        value.onVectorHover5(true);
                      },
                      opaque:true,
                      onExit : (val) {
                        value.onVectorHover5(false);
                      },
                      child: SizedBox(
                        height: 130,
                        width: width/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SlideTransition(
                              position: _animation3,
                                child: Image.asset("assets/vector-5.png")),
                            AnimatedContainer(duration: Duration(milliseconds: 600),height: value.vector5Hover?5 :25,),
                            SlideTransition(
                              position: _animation4,
                                child: Text("Culture and\nRecreation",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,))
                          ],
                        ),
                      ),
                    ),
                    MouseRegion(

                      onHover: (val) {
                        value.onVectorHover6(true);
                      },
                      opaque:true,
                      onExit : (val) {
                        value.onVectorHover6(false);
                      },
                      child: SizedBox(
                        height: 130,
                        width: width/15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SlideTransition(
                              position: _animation3,
                                child: Image.asset("assets/vector-6.png")),
                            AnimatedContainer(duration: Duration(milliseconds: 600),height: value.vector6Hover?5 :25,),
                            SlideTransition(
                              position: _animation4,
                                child: Text("Justice,Safety &\nthe Law",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 12),textAlign: TextAlign.center,))
                          ],
                        ),
                      ),
                    ),


                  ],
                );
              }
            ),
          ),
        )
      ],
    );
  }
}
