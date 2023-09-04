import 'package:flutter/material.dart';

class DesktopLeader extends StatefulWidget {
  const DesktopLeader({super.key});

  @override
  State<DesktopLeader> createState() => _DesktopLeaderState();
}

class _DesktopLeaderState extends State<DesktopLeader> with TickerProviderStateMixin{
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
       duration: const Duration(milliseconds: 2500),
     );
     _animation = Tween<Offset>(
       begin: Offset(-1, 0),
       end: Offset(0, 0),
     ).animate(_controller);
     _animation1 = Tween<Offset>(
       begin: Offset(0, 1),
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
    return Container(
      // color: Colors.black12,
      width: width,
      height: 650,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlideTransition(
            position: _animation1,
            child: Padding(
              padding:  EdgeInsets.only(top: 64,left: width/36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Meet Ideological Leader for\nYouth genaration",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800 ),),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: width/2.1 ,
                    child: const Text("HE Najeeb A. Al-Rawas is an environmental veteran who has served the government of Oman for over 25 years. Throughout his career,"
                        " he has held various leading positions in the Ministry of Environment as well as the Ministry of Regional,"
                        " Municipalities and Environment. He became the Undersecretary of the Ministry of Environment and Climate Affairs,"
                        " in 2013. HE Al-Rawas has played a major role over the years in the development and progress made in environmental management not,"
                        " only in Oman but also in the Gulf region through his participation in many committees and panels working in the",
                      style: TextStyle(wordSpacing: 5,),textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 22),
                    child: Row(
                      children: [
                        Container(height: 136,width: 3,color: Colors.black26,),
                        SizedBox(width: width/50,),
                        SizedBox(
                          width: width/3.2,
                          height: 136,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('"Stand at the top of a cliff and jump off and build your wings on the way down."',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("-Carnee Simmons, Mayor",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 25,
                          child: Icon(Icons.play_arrow,color: Colors.white),
                        ),
                      ),
                      Text("Video Intro\nAbout Our Muncipal",style: TextStyle(fontSize: 16),)
                    ],
                  )
                ],
              ),
            ),
          ),
          SlideTransition(
            position: _animation,
            child: Padding(
              padding: EdgeInsets.only(right:  width/20,top: 116),
              child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    spreadRadius: 5
                  )
                ]
              ),
                  child: Image.asset("assets/shake.png",scale: 5)),
            ),
          ),
        ],
      ),
    );
  }
}
