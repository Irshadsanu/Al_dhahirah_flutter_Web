import 'package:flutter/material.dart';

import '../Constants/Colors.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: 74,
          width: width,
          color: lightGrey,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: width/36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.phone_callback_rounded,size: 20),
                    Text("6546565")
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.access_time,size: 20,color: Colors.black),
                    ),
                    Text("Open Hours:  Sunday to Thursday 7:30-2:30")
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Text("Council"),
                    SizedBox(width: width/45,),
                    Text("Vacancies"),
                    SizedBox(width: width/45,),
                    Text("Complaints")
                  ],
                )

              ],
            ),
          ),
        ),
        Container(
          height: 82,
          width: width,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: width/36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/logo.png",scale: 4),
                Row(
                  children: [
                    InkWell(
                      onTap: () {

                      },
                      child: Row(
                        children: [
                          const Text("Pages"),
                          Image.asset("assets/img.png")
                        ],
                      ),
                    ),
                    SizedBox(width: width/65,),
                    Row(
                      children: [
                        const Text("Department"),
                        Image.asset("assets/img.png")
                      ],
                    ),
                    SizedBox(width: width/65,),
                    Row(
                      children: [
                        const Text("Events"),
                        Image.asset("assets/img.png")
                      ],
                    ),
                    SizedBox(width: width/65,),
                    Row(
                      children: [
                        const Text("Portfolio"),
                        Image.asset("assets/img.png")
                      ],
                    ),
                    SizedBox(width: width/65,),
                    Row(
                      children: [
                        const Text("Contact"),
                        Image.asset("assets/img.png")
                      ],
                    ),
                    SizedBox(width: width/65,),
                    Row(
                      children: [
                        const Text("Pages"),
                        Image.asset("assets/img.png")
                      ],
                    ),
                    SizedBox(width: width/65,),
                    Image.asset("assets/img_1.png")
                  ],
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Container(
                       height: 33,width: width/15,
                      decoration:BoxDecoration(
                        border: Border.all(color:Colors.black ,width: 0.5),
                        borderRadius: BorderRadius.circular(20)
                      ) ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Eng"),
                            Image.asset("assets/img.png")
                          ],
                        )),
                    SizedBox(width: width/45,),
                    Container(
                      width: width/10,
                        height: 45,
                        decoration: BoxDecoration(border: Border.all(width: 2,color: circlebalck)),
                        child: Center(child: Text("Report an Issue"))),

                  ],
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
