import 'package:flutter/material.dart';

import '../Constants/Colors.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return Container(
      height: 500,
      width: width,
      color: footer,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width/18,vertical: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("About Us"), SizedBox(width: width/50,),
                    Text("Services"), SizedBox(width: width/50,),
                    Text("Events"), SizedBox(width: width/50,),
                    Text("News"), SizedBox(width: width/50,),
                    Text("Contact"), SizedBox(width: width/50,),
                    Text("Portfolio"), SizedBox(width: width/50,),
                  ],
                ),
                SizedBox(
                  width: width/3.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Contact with us"),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: circlebalck,
                        child: Image.asset("assets/facebook-icon.png",scale: 1.5),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: circlebalck,
                        child: Image.asset("assets/twitter-icon.png",scale: 1.5),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: circlebalck,
                        child: Image.asset("assets/youtube-icon.png",scale: 1.5),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: circlebalck,
                        child: Image.asset("assets/instagram.png",scale: 1.5),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black87,
          ),
          SizedBox(height: 75,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width/18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: width/4.5,
                child: Column(
                  children: [
                    Row(children: [
                      Container(
                        height: 50,width: 50,
                        decoration: BoxDecoration(
                          color: circlebalck,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(child: Image.asset("assets/parlament.png",scale: 2.5,)),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Governate",style: TextStyle(color: circlebalck,fontWeight: FontWeight.values[8],fontSize: 17),),
                          Text("Ibri\nSulthanate of Oman"),
                        ],
                      )
                    ],),
                    Divider(),
                    SizedBox(height: 75,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.access_time_filled_outlined,color: Colors.grey,size: 18),
                        SizedBox(width: 3.8,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Opening Hours:"),
                            FittedBox(child: Text("Sunday to Thursday 7:30 - 2:30",style: TextStyle(fontSize: 12,color: Colors.grey))),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.phone,color: Colors.grey,size: 18),
                        SizedBox(width: 3.8,),
                        Text("Phone:"),
                        FittedBox(child: Text("1800 456 6541",style: TextStyle(color: Colors.grey))),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.email,color: Colors.grey,size: 18),
                        SizedBox(width: 3.8,),
                        Text("Email:"),
                        FittedBox(child: Text("Demomailid@gmail.com",style: TextStyle(color: Colors.grey,fontSize: 13))),
                      ],
                    ),
                  ],
                ),
                ),
                SizedBox(width: width/5.5,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment:Alignment.topLeft ,
                        child: Text("Service Request",style: TextStyle(color: circlebalck,fontWeight: FontWeight.values[8],fontSize: 17),)),
                    SizedBox(height: 27,),
                    Row(
                      children: [
                        Icon(Icons.chevron_right,color: Colors.grey,),
                        Text("Apply for a City Job",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 19,),
                    Row(
                      children: [
                        Icon(Icons.chevron_right,color: Colors.grey,),
                        Text("Request a Service",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 19,),
                    Row(
                      children: [
                        Icon(Icons.chevron_right,color: Colors.grey,),
                        Text("Get a Parking Permit",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 19,),
                    Row(
                      children: [
                        Icon(Icons.chevron_right,color: Colors.grey,),
                        Text("Get a Parking Permit",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 19,),
                    Row(
                      children: [
                        Icon(Icons.chevron_right,color: Colors.grey,),
                        Text("Online Birth Certificate",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 19,),
                    Row(
                      children: [
                        Icon(Icons.chevron_right,color: Colors.grey,),
                        Text("Trade License",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ],
                ),
                ),
                SizedBox(width: width/5.5,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment:Alignment.topLeft ,
                          child: Text("Useful Links",style: TextStyle(color: circlebalck,fontWeight: FontWeight.values[8],fontSize: 17),)),
                      SizedBox(height: 27,),
                      Row(
                        children: [
                          Icon(Icons.chevron_right,color: Colors.grey,),
                          Text("Our Blog",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      SizedBox(height: 19,),
                      Row(
                        children: [
                          Icon(Icons.chevron_right,color: Colors.grey,),
                          Text("Town Gallery",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      SizedBox(height: 19,),
                      Row(
                        children: [
                          Icon(Icons.chevron_right,color: Colors.grey,),
                          Text("Our History",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      SizedBox(height: 19,),
                      Row(
                        children: [
                          Icon(Icons.chevron_right,color: Colors.grey,),
                          Text("Department",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      SizedBox(height: 19,),
                      Row(
                        children: [
                          Icon(Icons.chevron_right,color: Colors.grey,),
                          Text("Portfolio",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      SizedBox(height: 19,),
                      Row(
                        children: [
                          Icon(Icons.chevron_right,color: Colors.grey,),
                          Text("Donate",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width/4.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment:Alignment.topLeft ,
                        child: Text("City News & Updates",style: TextStyle(color: circlebalck,fontWeight: FontWeight.values[8],fontSize: 17),)),
                    SizedBox(height: 42,),
                    SizedBox(width: width/6.5 ,child: Text("The latest Egovt news, articles, and resources, sent straight to your inbox every month.",
                    style: TextStyle(color: Colors.grey),
                    )),
                    SizedBox(height: 42,),
                    Container(
                      width: width/4.5,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width/7,
                            height: 58,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: TextField(
                                obscureText: true,
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Your Email',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            width: width/14,
                            height: 58,
                            color: Colors.grey,
                            child: Center(
                              child: Text("Subscribe"),
                            ),
                          )
                        ],
                      ),
                    )

                  ],
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
