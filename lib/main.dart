import 'package:al_dhahirah/Footer/Footer_Page.dart';
import 'package:al_dhahirah/Providers/Explore_Provider.dart';
import 'package:al_dhahirah/Providers/Landing_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Explore_City/Explore_City_Page.dart';
import 'Explore_Services/Explore_Services_Page.dart';
import 'Landing_Page/Landing_Page.dart';
import 'Leader_Section/Leader_Page.dart';
import 'Map_Screen/Map_Page.dart';
import 'Navbar/Navbar_Page.dart';
import 'News_Page/News_Page.dart';
import 'Online_Resorces/Online_Resorces_Page.dart';
import 'Providers/Explore_City_Provider.dart';
import 'Providers/News_Provider.dart';
import 'Providers/Online_Resorces_Provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LandingProvider(),),
        ChangeNotifierProvider(create: (context) => ExploreProvider(),),
        ChangeNotifierProvider(create: (context) => newsProvider(),),
        ChangeNotifierProvider(create: (context) => ExploreCityProvider(),),
        ChangeNotifierProvider(create: (context) => OnlineResorcesProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Al-Dhahirah',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LandingProvider>(
      builder: (context,value,child) {
        return Scaffold(
          drawer:Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.white,
              height: 450,
              width: 250,
              // surfaceTintColor: Colors.black,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 12,right: 12,top: 40),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25), // Set the desired border radius value
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Image.asset("assets/search.png",scale: 1.8),
                        ),

                      ),
                    ),
                  ),
                  Container(color: Colors.grey.shade100,height: 2,margin: EdgeInsets.symmetric(horizontal: 22,vertical: 14),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: ListTile(
                      title: const Text('Pages'),
                      onTap: () {
                        // Handle item 1 tap
                      },
                    ),
                  ),
                  Container(color: Colors.grey.shade400,height: 2,margin: EdgeInsets.symmetric(horizontal: 22,),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: ListTile(
                      title: Text('Departments'),
                      onTap: () {
                        // Handle item 2 tap
                      },
                    ),
                  ),
                  Container(color: Colors.grey.shade400,height: 2,margin: EdgeInsets.symmetric(horizontal: 22,),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: ListTile(
                      title: Text('Events'),
                      onTap: () {
                        // Handle item 2 tap
                      },
                    ),
                  ),
                  Container(color: Colors.grey.shade400,height: 2,margin: EdgeInsets.symmetric(horizontal: 22,),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: ListTile(
                      title: Text('News'),
                      onTap: () {
                         // Handle item 2 tap
                      },
                    ),
                  ),
                  Container(color: Colors.grey.shade400,height: 2,margin: EdgeInsets.symmetric(horizontal: 22,),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: ListTile(
                      title: Text('Portfolio'),
                      onTap: () {
                        // Handle item 2 tap
                      },
                    ),
                  ),
                  Container(color: Colors.grey.shade400,height: 2,margin: EdgeInsets.symmetric(horizontal: 22,),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: ListTile(
                      title: Text('Contact'),
                      onTap: () {
                        // Handle item 2 tap
                      },
                    ),
                  ),
                  Container(color: Colors.grey.shade400,height: 2,margin: EdgeInsets.symmetric(horizontal: 22,),),
                ],
              ),
            ),
          ),
          body: ListView(
            children: const [
              Navbar(),
              LandingPage(),
              LeaderPage(),
              ExploreServices(),
              MapPage(),
              OnlineResorces(),
              ExploreCity(),
              NewsPage(),
              FooterPage(),
            ],
          ),
        );
      }
    );
  }
}
