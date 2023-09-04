import 'package:al_dhahirah/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Online_Resorces_Provider.dart';

class DesktopOnlinePage extends StatefulWidget {
  const DesktopOnlinePage({super.key});

  @override
  State<DesktopOnlinePage> createState() => _DesktopOnlinePageState();
}

class _DesktopOnlinePageState extends State<DesktopOnlinePage> with TickerProviderStateMixin {
  late Animation<Offset> _animation;
  late Animation<Offset> _animation1;
  late AnimationController _controller;
  late AnimationController _controller1;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );
    _animation = Tween<Offset>(
      begin: Offset(1, 0),
      end: Offset(0, 0),
    ).animate(_controller);
    _animation1 = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(_controller);


    _controller.forward();
    _controller1.forward();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return Consumer<OnlineResorcesProvider>(
      builder: (context,value,child) {
        return SizedBox(
          height: 650,
          child: Stack(
            children: [
              Container(
                height: 410,
                width:width ,
                color: litepink,
                child: Padding(
                  padding:  EdgeInsets.only(left: width/36,top: 45),
                  child: SlideTransition(
                    position: _animation,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Explore Online\nServices & Resource",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
                        const SizedBox(height: 25,),
                        SizedBox(width:width/ 3.5,child: const Text("City goverment providing a wide range of online services to people who need help."))
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                left: width/2.8,
                top: 100,
                child: SlideTransition(
                  position: _animation1,
                  child: Row(
                    children: [
                      Container(
                        width: width/4,
                        color: Colors.white,
                        // height: 200,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(vertical: 42,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation1(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation1(false);
                                },
                                child: Container(
                                  color: value.resorceHover1?Colors.grey:Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: const Text("Parking Permission"),
                                      ),
                                       Container(color: Colors.grey,height: 1),
                                    ],
                                  ),
                                ),
                              ),

                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation2(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation2(false);
                                },
                                child: Container(
                                  color: value.resorceHover2?Colors.grey:Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("File A Tax Return"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),

                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation3(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation3(false);
                                },
                                child: Container(
                                  color: value.resorceHover3?Colors.grey:Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("Order Birth Cirtificate"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),

                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation4(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation4(false);
                                },
                                child: Container(
                                  color: value.resorceHover4?Colors.grey:Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("Get Building Permission"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),

                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation5(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation5(false);
                                },
                                child: Container(
                                  color:value.resorceHover5?Colors.grey:Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("Apply for Driving License"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),

                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation6(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation6(false);
                                },
                                child: Container(
                                  color: value.resorceHover6?Colors.grey:Colors.white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("Apply for Driving License"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: width/4,
                        // height: 200,
                        color: Colors.grey,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(vertical: 42,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation7(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation7(false);
                                },
                                child: Container(
                                  color: value.resorceHover7?Colors.white:Colors.grey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("Parking Permission"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation8(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation8(false);
                                },
                                child: Container(
                                  color: value.resorceHover8?Colors.white:Colors.grey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("File A Tax Return"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),


                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation9(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation9(false);
                                },
                                child: Container(
                                  color: value.resorceHover9?Colors.white:Colors.grey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("Order Birth Cirtificate"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),

                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation10(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation10(false);
                                },
                                child: Container(
                                  color: value.resorceHover10?Colors.white:Colors.grey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("Get Building Permission"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),

                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation11(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation11(false);
                                },
                                child: Container(
                                  color: value.resorceHover11?Colors.white:Colors.grey,
                                  child: Column(
                                    mainAxisAlignment:MainAxisAlignment.center ,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("Apply for Driving License"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),

                              MouseRegion(
                                onEnter: (event) {
                                  value.resorceAnimation12(true);
                                },
                                onExit: (event) {
                                  value.resorceAnimation12(false);
                                },
                                child: Container(
                                  color: value.resorceHover12?Colors.white:Colors.grey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 22,horizontal: width/45),
                                        child: Text("Apply for Driving License"),
                                      ),
                                      Container(color: Colors.grey,height: 1)
                                    ],
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
