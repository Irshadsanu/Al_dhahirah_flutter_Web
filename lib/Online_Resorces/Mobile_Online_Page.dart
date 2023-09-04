import 'package:flutter/material.dart';

import '../Constants/Colors.dart';

class MobileOnlinePage extends StatefulWidget {
  const MobileOnlinePage({super.key});

  @override
  State<MobileOnlinePage> createState() => _MobileOnlinePageState();
}

class _MobileOnlinePageState extends State<MobileOnlinePage> with TickerProviderStateMixin{
  late Animation<Offset> _animation;
  late Animation<Offset> _animation1;
  late AnimationController _controller;
  late AnimationController _controller1;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );
    _animation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset(0, 0),
    ).animate(_controller);
    _animation1 = Tween<Offset>(
      begin: Offset(0, -2),
      end: Offset(0, 0),
    ).animate(_controller1);


    _controller.forward();
    _controller1.forward();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return  Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 5,
              blurRadius: 5,
            )
          ],
      color: litepink,
      ),
      // height: 510,
      width:width ,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width/60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: width/22,top: 53),
              child: Text("Explore Online\nServices & Resource",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
            ),
            SizedBox(height: 98,),
            Column(
              children: [
                SlideTransition(
                  position: _animation,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    width: width,
                    color: Colors.white,
                    // height: 200,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 42,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Parking Permission"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("File A Tax Return"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Order Birth Cirtificate"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Get Building Permission"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Apply for Driving License"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Apply for Driving License"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                        ],
                      ),
                    ),
                  ),
                ),
                SlideTransition(
                  position: _animation1,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    width: width,
                    // height: 200,
                    color: Colors.white,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 42,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Parking Permission"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("File A Tax Return"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Order Birth Cirtificate"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Get Building Permission"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Apply for Driving License"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: width/45),
                            child: Text("Apply for Driving License"),
                          ),
                          Divider(color: Colors.grey,thickness: 1,),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
