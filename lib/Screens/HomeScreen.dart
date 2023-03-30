import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:threeoverapp/Screens/searchPage.dart';
import 'package:threeoverapp/Screens/supportForumPage.dart';

import '../MapView/MapView.dart';
import '../utils/Drawer.dart';
import 'MatchingFIlterScreens/FilterScreenFristPage.dart';
import 'MyFilters.dart';
import 'NotificationScreen/NotificationScreen.dart';
import 'chatPage.dart';
import 'HobbieAndInterestPage.dart';
import '../ProfileScreen/ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> _onItemTapped(int index) async {
    _selectedIndex = index;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return _children[_selectedIndex];
    }));
    // Navigator.pushReplacement(
    //     context,
    //     PageRouteBuilder(
    //       pageBuilder: (context, animation1, animation2) =>
    //           _children[_selectedIndex],
    //     ));

    // if (firstsyncRequired == false && index != 2) {
    //   setState(() {
    //     _selectedIndex = index;
    //   });
    // }
  }

  final List<Widget> _children = [
    const HomeScreen(),
    const ProfilePage(),

    const MapScreen(),
    const HobbiesAndInterest(),
    //const filtersPage(),
    //const searchPage(),
    const NotificationScreen(),


    const chatPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(
        width: (MediaQuery.of(context).size.width) / 1.8,
        child: const MainDrawer(),
      ),
      appBar: AppBar(
        //titleSpacing: 10,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
          child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xfff0f0f0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)]),
              child: Builder(
                builder: (context) {
                  return IconButton(
                    icon: SvgPicture.asset(
                      "asset/tab.svg",
                      fit: BoxFit.fill,
                    ),
                    onPressed: () {
                       Scaffold.of(context).openDrawer();
                      //  scaffoldKey.currentState!.openEndDrawer();
                    },
                  );
                }
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 2.0)
                    ]),
                child: IconButton(
                  icon: const Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                    size: 17,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return MapScreen();
                    }));
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 2.0)
                    ]),
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications_none_rounded,
                    color: Colors.black,
                    size: 17,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return NotificationScreen();
                    }));
                  },
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 0,
              offset: const Offset(0, 0.1),
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(50)),
        ),
        margin: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "game",
                icon: Container(
                    //padding: const EdgeInsets.all(7),
                    child: const Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                )),
                //label: '',
              ),
              BottomNavigationBarItem(
                label: "profile",
                icon: Container(
                    //padding: const EdgeInsets.all(7),
                    child: SvgPicture.asset(
                  "asset/profile.svg",
                  fit: BoxFit.none,
                )),
                //label: '',
              ),
              BottomNavigationBarItem(
                label: "search",
                icon: Container(
                    //padding: const EdgeInsets.all(7),
                    child: SvgPicture.asset(
                  "asset/search.svg",
                  fit: BoxFit.none,
                )),
              ),
              BottomNavigationBarItem(
                label: "feed",
                icon: Container(
                    //padding: const EdgeInsets.all(7),
                    child: SvgPicture.asset(
                  "asset/feed.svg",
                  fit: BoxFit.none,
                )),
              ),
              BottomNavigationBarItem(
                label: "bell",
                icon: Container(
                    //padding: const EdgeInsets.all(7),
                    child: SvgPicture.asset(
                  "asset/bell.svg",
                  fit: BoxFit.none,
                )),
              ),
              BottomNavigationBarItem(
                label: "chat",
                icon: Container(
                    //padding: const EdgeInsets.all(7),
                    child: SvgPicture.asset(
                  "asset/chat.svg",
                  fit: BoxFit.none,
                )),
              ),
            ],
            // currentIndex: _selectedIndex,
            selectedItemColor: Colors.black.withOpacity(0.5),
            unselectedItemColor: Colors.green,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: _onItemTapped,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Container(
                  height: 110,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.red, blurRadius: 2.0)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          SvgPicture.asset("asset/circle.svg"),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Center(
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  //
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 5)
                                  ],

                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                child: CircularPercentIndicator(
                                  percent: 0.3,
                                  radius: 40,
                                  lineWidth: 3,
                                  backgroundColor: Colors.transparent,
                                  progressColor: Colors.red,
                                  center: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.red, blurRadius: 2.5)
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                    ),
                                    child: Center(
                                        child: Text("       24% \n Completed",
                                            style: TextStyle(
                                                color: Colors.grey.shade900,
                                                fontSize: 10))),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Center(
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("asset/prof.jpg"),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                  return const ProfilePage();
                                }));
                              },
                              child: Container(
                                height: 18,
                                width: 70,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 1.5)
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                  color: Colors.white,
                                ),
                                child: const Center(
                                    child: Text(
                                  "My Profile",
                                  style: TextStyle(fontSize: 12),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Container(
                height: 0.5,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.red, blurRadius: 2.0)]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return filtersPage();
                  }));
                },
                child: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.red, blurRadius: 2.0)]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "My Filter",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 70,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  //offset: Offset(-2, 0),
                                  color: Colors.grey,
                                  blurRadius: 1.0)
                            ]),
                        child: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(
                              "asset/filter.svg",
                              fit: BoxFit.scaleDown,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return const MyFilterFirstScreen();
                  }));
                },
                child: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.red, blurRadius: 2.0)]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "My Matching Filter",
                          style: TextStyle(fontSize: 11, color: Colors.black54),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 70,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  //offset: Offset(-2, 0),
                                  color: Colors.grey,
                                  blurRadius: 1.0)
                            ]),
                        child: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(
                              "asset/grpsearach.svg",
                              fit: BoxFit.scaleDown,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return const HobbiesAndInterest();
                  }));
                },
                child: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.red, blurRadius: 2.0)]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "My Hobbies & Interest",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 70,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  //offset: Offset(-2, 0),
                                  color: Colors.grey,
                                  blurRadius: 1.0)
                            ]),
                        child: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(
                              "asset/hobby.svg",
                              fit: BoxFit.scaleDown,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: InkWell(
                onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                     return const supportForumPage();
                   }));
                },
                child: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.red, blurRadius: 2.0)]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Support Forum",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 70,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  //offset: Offset(-2, 0),
                                  color: Colors.grey,
                                  blurRadius: 1.0)
                            ]),
                        child: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(
                              "asset/advie.svg",
                              fit: BoxFit.scaleDown,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
