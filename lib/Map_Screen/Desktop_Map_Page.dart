import 'package:flutter/material.dart';

class DesktopMap extends StatefulWidget {
  const DesktopMap({super.key});

  @override
  State<DesktopMap> createState() => _DesktopMapState();
}

class _DesktopMapState extends State<DesktopMap> with TickerProviderStateMixin{
  late Animation<Offset> _animation;
  late Animation<Offset> _animation1;
  late AnimationController _controller;
  late AnimationController _controller1;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _animation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(_controller);
    _animation1 = Tween<Offset>(
      begin: Offset(1, 0),
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
    return Container(
      height: 630,
      width: width,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
        child: Row(
          children: [
            SlideTransition(
              position: _animation,
              child: Padding(
                padding:EdgeInsets.symmetric(horizontal: width/35),
                child: Image.asset("assets/MAP.png",scale:4),
              ),
            ),
            SlideTransition(
              position: _animation1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  const SizedBox(height: 25),
                  SizedBox(
                    width: width/3,
                    child: const Text("This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit\n auctor aliquet. Aenean sollicitudin",
                      style: TextStyle(wordSpacing: 4,color: Colors.grey),textAlign: TextAlign.justify ,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  SizedBox(
                    width: width/3,
                    child: const Text("This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin,"
                        " lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio,"
                        " sit amet  nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.",
                      style: TextStyle(wordSpacing:2,color: Colors.grey),textAlign: TextAlign.justify ,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Icon(Icons.star,color: Colors.grey,),
                      SizedBox(width: 11),
                      Text("24-Hours Emergency Services",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  const SizedBox(height: 12,),
                  Row(
                    children: const [
                      Icon(Icons.star,color: Colors.grey),
                      SizedBox(width: 11,),
                      Text("Citizen Safety Information",style: TextStyle(color: Colors.grey))
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.grey,),
                      SizedBox(width: 11,),
                      Text("Marriage Procedures",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.grey,),
                      SizedBox(width: 11,),
                      Text("Constitution and Government Law",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.grey,),
                      SizedBox(width: 11,),
                      Text("Ongoing Projects",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
