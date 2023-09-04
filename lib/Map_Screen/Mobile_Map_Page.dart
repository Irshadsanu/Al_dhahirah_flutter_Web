import 'package:flutter/material.dart';

class MobileMap extends StatefulWidget {
  const MobileMap({super.key});

  @override
  State<MobileMap> createState() => _MobileMapState();
}

class _MobileMapState extends State<MobileMap> with TickerProviderStateMixin{
  late Animation<Offset> _animation;
  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;
  late Animation<Offset> _animation3;
  late Animation<Offset> _animation4;
  late Animation<Offset> _animation5;
  late AnimationController _controller;
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;
  late AnimationController _controller5;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _controller3 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _controller4 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _controller5 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _animation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(_controller);
    _animation1 = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(_controller1);
    _animation2 = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(_controller2);
    _animation3 = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(_controller3);
    _animation4 = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(_controller4);
    _animation5 = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(_controller5);


    _controller.forward();
    _controller1.forward().then((value) => _controller2.forward().then((value) => _controller3.forward()
    .then((value) => _controller4.forward().then((value) => _controller5.forward()))
    ));




    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return Container(
      // height: 730,
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric( vertical: 67),
        child: Column(
          children: [
            Image.asset("assets/MAP.png",scale: 4,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                SlideTransition(
                  position: _animation,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width/15),
                    child: Row(
                      children: [
                        Container(
                          height: 82,
                          width: 5,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Welcome",style: TextStyle(fontSize: 18),),
                            Text("Governorate",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800),)
                          ],)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: width/1.15,
                  child: const Text("This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit\n auctor aliquet. Aenean sollicitudin",
                    style: TextStyle(wordSpacing: 4,color: Colors.grey),textAlign: TextAlign.justify ,
                  ),
                ),
                const SizedBox(height: 15,),
                SizedBox(
                  width: width/1.15,
                  child: const Text("This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin,"
                      " lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio,"
                      " sit amet  nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.",
                    style: TextStyle(wordSpacing:2,color: Colors.grey),textAlign: TextAlign.justify ,
                  ),
                ),
                const SizedBox(height: 33),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width/15),
                  child: SlideTransition(
                    position: _animation1,
                    child: Row(
                      children: const [
                        Icon(Icons.star,color: Colors.grey,),
                        SizedBox(width: 11),
                        Text("24-Hours Emergency Services",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width/15),
                  child: SlideTransition(
                    position: _animation2,
                    child: Row(
                      children: const [
                        Icon(Icons.star,color: Colors.grey),
                        SizedBox(width: 11,),
                        Text("Citizen Safety Information",style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: width/15),
                  child: SlideTransition(
                    position: _animation3,
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.grey,),
                        SizedBox(width: 11,),
                        Text("Marriage Procedures",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width/15),
                  child: SlideTransition(
                    position: _animation4,
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.grey,),
                        SizedBox(width: 11,),
                        Text("Constitution and Government Law",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: width/15),
                  child: SlideTransition(
                    position: _animation5,
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.grey,),
                        SizedBox(width: 11,),
                        Text("Ongoing Projects",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
