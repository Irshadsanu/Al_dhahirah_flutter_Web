import 'package:flutter/material.dart';

import '../Constants/Explore_City_Card.dart';

class MobileCity extends StatefulWidget {
  const MobileCity({super.key});

  @override
  State<MobileCity> createState() => _MobileCityState();
}

class _MobileCityState extends State<MobileCity>with TickerProviderStateMixin {
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
    return SizedBox(
      child: Column(
        children: [
          SizedBox(height: 69,),
          Text("Explore City Highlights",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
          // SizedBox(height: 42,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width/18,vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SlideTransition(
                  position: _animation,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExploreCityCard(width,"assets/city-2.png","Ibri",0,"This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit."),
                  ),
                ),
                SlideTransition(
                  position: _animation1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExploreCityCard(width,"assets/city-6.png","Dhank",1,"This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit."),
                  ),
                ),
                SlideTransition(
                  position: _animation2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExploreCityCard(width,"assets/city-1.png","Yankul",2,"This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit."),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
