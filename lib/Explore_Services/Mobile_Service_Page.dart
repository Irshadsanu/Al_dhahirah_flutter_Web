import 'package:al_dhahirah/Constants/Colors.dart';
import 'package:flutter/material.dart';

import '../Constants/Service_Card.dart';

class MobileServices extends StatefulWidget {
  const MobileServices({super.key});

  @override
  State<MobileServices> createState() => _MobileServicesState();
}

class _MobileServicesState extends State<MobileServices> with TickerProviderStateMixin {
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
      duration: const Duration(milliseconds: 2000),
    );
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2600),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3200),
    );
    _animation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(_controller);
    _animation1 = Tween<Offset>(
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    ).animate(_controller1);
    _animation2 = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(_controller2);


    _controller.forward();
    _controller1.forward();
    _controller2.forward();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: litepink,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            blurRadius: 5,
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width/25),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("EXPLORE THE\nUNEXPLORED",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800)),
            SizedBox(height: 10,),
            SlideTransition(
              position: _animation,
                child: ServiceCard(width,"Tourist Destination","assets/city-5.png",0)),
            SizedBox(height: 64,),
            SlideTransition(
              position: _animation1,
                child: ServiceCard(width,"City Visitors Guide","assets/city-4.png",1)),
            SizedBox(height: 64,),
            SlideTransition(
              position: _animation2,
                child: ServiceCard(width,"Administration","assets/city-3.png",2)),
            SizedBox(height: 64,),
          ],
        ),
      ),
    );
  }
}
