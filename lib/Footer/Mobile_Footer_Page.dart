import 'package:flutter/material.dart';

import '../Constants/Colors.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return SizedBox(
      width:width,
      child:Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width/10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
          ),
          SizedBox(height: 35),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width/10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.access_time_filled_outlined,color: Colors.grey,size: 18),
                SizedBox(width: 3.8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Opening Hours:"),
                    FittedBox(child: Text("Sunday to Thursday 7:30 - 2:30",style: TextStyle(fontSize: 15,color: Colors.grey))),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 15,),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: width/10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.phone,color: Colors.grey,size: 18),
                SizedBox(width: 3.8,),
                Text("Phone:"),
                FittedBox(child: Text("1800 456 6541",style: TextStyle(color: Colors.grey))),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width/10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.email,color: Colors.grey,size: 18),
                SizedBox(width: 3.8,),
                Text("Email:"),
                FittedBox(child: Text("Demomailid@gmail.com",style: TextStyle(color: Colors.grey,fontSize: 13))),
              ],
            ),
          ),
          SizedBox(height: 20,),

          Text("City News & Updates",style: TextStyle(color: circlebalck,fontWeight: FontWeight.values[8],fontSize: 17),),
          SizedBox(height: 12,),
          SizedBox(width: width/1.5 ,child: Text("The latest Egovt news, articles, and resources, sent straight to your inbox every month.",
            style: TextStyle(color: Colors.grey),
          )),
          SizedBox(height: 15,),
          Container(
            width: width/1.25,
            color: Colors.white,
            child: SizedBox(
              width: width/1.25,
              height: 58,
              child: const Padding(
                padding: EdgeInsets.only(left: 5),
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
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.centerRight,
            width: width/3,
            height: 38,
            color: Colors.grey,
            child: Center(
              child: Text("Subscribe"),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: width/8,vertical: 10),
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
          ),

        ],
      ),
    );

  }
}
