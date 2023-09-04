import 'package:al_dhahirah/Providers/Landing_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/Colors.dart';

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var hieght=MediaQuery.of(context).size.height;
    return Container(
      height: 82,
      width: width,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width/33),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/logo.png",scale: 4),
            Row(
              children: [
                Container(
                    width: width/4,
                    height: 35,
                    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey)),
                    child: Center(child: Text("Report an Issue",style: TextStyle(color: Colors.grey,fontSize: 11),))),
                SizedBox(width: width/45),
                Consumer<LandingProvider>(
                  builder: (context,value,child) {
                    return GestureDetector(
                      onTap: () {
                          Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        height: 35,width: 35,
                          color: Colors.black,
                          child:Icon(Icons.menu,color: Colors.white,)),
                    );
                  }
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
