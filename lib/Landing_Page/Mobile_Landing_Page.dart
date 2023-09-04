import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Constants/Colors.dart';

class MobileLanding extends StatefulWidget {
  const MobileLanding({super.key});

  @override
  State<MobileLanding> createState() => _MobileLandingState();
}

class _MobileLandingState extends State<MobileLanding> with TickerProviderStateMixin{
  late Animation<Offset> _animation;
  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;
  late AnimationController _controller;
  late AnimationController _controller1;
  late AnimationController _controller2;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _animation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(_controller);
    _animation1 = Tween<Offset>(
      begin: Offset(1, 0),
      end: Offset(0, 0),
    ).animate(_controller1);
    _animation2 = Tween<Offset>(
      begin: Offset(0, -1),
      end: Offset(0, 0),
    ).animate(_controller2);

    _controller.forward();
    _controller1.forward();
    _controller2.forward();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List<String> listImage = [
      "assets/city-6.png",
      "assets/city-7.png",
      "assets/city-8.png",
    ];

    var width = MediaQuery.of(context).size.width;
    var hieght = MediaQuery.of(context).size.height;
    return Column(
      children: [
        // SizedBox(height: 20,),
        SizedBox(
          child: Stack(
            children: [
              Container(
                width: width,
                // height: 650,
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
                )),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: width / 15,
                      left: width / 15,
                      bottom: 181,
                      top: 25),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      // enlargeCenterPage:true,
                      height: 348,
                      viewportFraction: 1,
                      padEnds: true,
                      autoPlayInterval: const Duration(milliseconds: 1700),
                      autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                      autoPlay: true,
                      // autoPlay: false,
                    ),
                    items: listImage
                        .map((e) => Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width / 60),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    e,
                                    fit: BoxFit.cover,
                                  )),
                            ))
                        .toList(),
                  ),
                ),
              ),
              Positioned(
                top: 320,
                left: width / 25,
                right: width / 25,
                child: SizedBox(
                  width: width / 1.5,
                  height: 145,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Transform.rotate(
                            angle: -3.15,
                            child: Icon(
                              Icons.arrow_right_alt,
                              size: 32,
                            )),
                        SlideTransition(
                          position: _animation2,
                          child: Container(
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
                                borderRadius: BorderRadius.circular(5)),
                            height: 126,
                            width: width / 1.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // SizedBox(
                                //   height: 15,
                                // ),
                                Text(
                                  "Explore City Highlights",
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w800),
                                ),
                                // SizedBox(
                                //   height: 8,
                                // ),
                                SizedBox(
                                  width: width / 2,
                                  child: Text(
                                    "The Ministry of Health (MOH) is responsible for ensuring the availability of health care to",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                // const SizedBox(
                                //   height: 10,
                                // ),
                                Container(
                                  height: 25,
                                  width: width / 5,
                                  color: Colors.grey,
                                  child: Center(
                                      child: FittedBox(
                                          child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width / 20),
                                    child: Text("Explore More"),
                                  ))),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          size: 32,
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: width,
          decoration: BoxDecoration(
            color: litepink,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 7,
                blurRadius: 4,
              )
            ],
          ),
          child: Padding(
            padding:  const EdgeInsets.symmetric(vertical:60),
            child: Column(
              children: [
                Row(
                  children: [
                    SlideTransition(
                      position: _animation,
                      child: SizedBox(
                        height: 130,
                        width: width / 2,
                        child: Column(
                          children: [
                            Image.asset("assets/vector-1.png"),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Your\n Government",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 13),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SlideTransition(
                      position: _animation1,
                      child: SizedBox(
                        height: 130,
                        width: width / 2,
                        child: Column(
                          children: [
                            Image.asset("assets/vector-2.png"),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Job and\nUnemployment",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 13),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SlideTransition(
                      position: _animation,
                      child: SizedBox(
                        height: 130,
                        width: width / 2,
                        child: Column(
                          children: [
                            Image.asset("assets/vector-3.png"),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Business and\nIndustry",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 13),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SlideTransition(
                      position: _animation1,
                      child: SizedBox(
                        height: 130,
                        width: width / 2,
                        child: Column(
                          children: [
                            Image.asset("assets/vector-4.png"),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Roads and\nTransport",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 13),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SlideTransition(
                      position: _animation,
                      child: SizedBox(
                        height: 130,
                        width: width / 2,
                        child: Column(
                          children: [
                            Image.asset("assets/vector-5.png"),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Culture and\nRecreation",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 13),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    SlideTransition(
                      position: _animation1,
                      child: SizedBox(
                        height: 130,
                        width: width / 2,
                        child: Column(
                          children: [
                            Image.asset("assets/vector-6.png"),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Justice, Safety and\nthe Law",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 13),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        )

        // Positioned(
        //   left: width/75,
        //   right: width/75,
        //   top: 560,
        //   child: Container(
        //     // margin: EdgeInsets.symmetric(horizontal: width/75),
        //     width: width,
        //     height: 210,
        //     decoration: BoxDecoration(
        //         boxShadow: [
        //           BoxShadow(
        //             color: gradientColor,
        //             spreadRadius: 4,
        //             blurRadius: 4,
        //           )
        //         ],
        //         gradient: LinearGradient(
        //           begin: Alignment.centerLeft,
        //           end: Alignment.centerRight,
        //           colors: [
        //             gradientColor,
        //             Colors.white,
        //             Colors.white,
        //             gradientColor
        //           ],
        //         ),
        //         image: DecorationImage(image: AssetImage("assets/background.png"),fit: BoxFit.fill)
        //     ),
        //
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround ,
        //       children: [
        //         SizedBox(
        //           height: 130,
        //           width: width/15,
        //           child: Column(
        //             children: [
        //               Image.asset("assets/vector-1.png"),
        //               SizedBox(height: 25,),
        //               Text("Your\n Government",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,)
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 130,
        //           width: width/15,
        //           child: Column(
        //             children: [
        //               Image.asset("assets/vector-2.png"),
        //               SizedBox(height: 25,),
        //               Text("Jobe and\nUnemployment",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,)
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 130,
        //           width: width/15,
        //           child: Column(
        //             children: [
        //               Image.asset("assets/vector-3.png"),
        //               SizedBox(height: 25,),
        //               Text("Business and\nIndustry",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,)
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 130,
        //           width: width/15,
        //           child: Column(
        //             children: [
        //               Image.asset("assets/vector-4.png"),
        //               SizedBox(height: 25,),
        //               Text("Roads and\nTransport",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,)
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 130,
        //           width: width/15,
        //           child: Column(
        //             children: [
        //               Image.asset("assets/vector-5.png"),
        //               SizedBox(height: 25,),
        //               Text("Culture and\nRecreation",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,)
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 130,
        //           width: width/15,
        //           child: Column(
        //             children: [
        //               Image.asset("assets/vector-6.png"),
        //               SizedBox(height: 25,),
        //               Text("Justice,Safety and\nthe Law",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13),textAlign: TextAlign.center,)
        //             ],
        //           ),
        //         ),
        //
        //
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
