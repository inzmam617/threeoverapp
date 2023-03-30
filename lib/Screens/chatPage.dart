import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threeoverapp/Screens/HomeScreen.dart';
import 'package:threeoverapp/Screens/searchPage.dart';

import '../MapView/MapView.dart';
import 'MessagesScreen.dart';
import 'MyFilters.dart';
import 'HobbieAndInterestPage.dart';
import '../ProfileScreen/ProfileScreen.dart';
import 'NotificationScreen/NotificationScreen.dart';

class chatPage extends StatefulWidget {
  const chatPage({Key? key}) : super(key: key);

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  int _selectedIndex = 0;

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
  final bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 55,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 2.0)
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(55),
                          bottomRight: Radius.circular(55))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: SvgPicture.asset("asset/arrow (2).svg")),
                          const Padding(
                            padding: EdgeInsets.only(top: 15, left: 8),
                            child: Text(
                              "Messages",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                        return const NotificationScreen();
                                      }));
                                    },
                                    icon: SvgPicture.asset(
                                        "asset/notification-svgrepo-com.svg")),
                              ),
                            ),
                          ),
                          Container(
                            height: 55,
                            width: 150,
                            decoration: const BoxDecoration(
                                color: Color(0xfff5f5f5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(55))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 9),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: const [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("asset/prof.jpg"),
                                        radius: 18.0,
                                      ),
                                      Center(
                                        child: Text(
                                          "Lily",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("asset/prof.jpg"),
                                        radius: 18.0,
                                      ),
                                      Center(
                                        child: Text(
                                          "Rose",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("asset/prof.jpg"),
                                        radius: 18.0,
                                      ),
                                      Center(
                                        child: Text(
                                          "Adi",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black12,
                    height: 0.5,
                    width: 100,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "29 November 2022",
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: Colors.black12,
                    height: 0.5,
                    width: 100,
                  ),
                ],
              ),
            ),

            ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  child: InkWell(
                    onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return const MessagesScreen();
                    }));
                    },
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5.0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Stack(
                              children: [

                                Container(
                                height: 30,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                  color: Color(0xfff5f5f5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          SizedBox(width: 45,),

                                          Padding(
                                            padding: EdgeInsets.only(top:2),
                                            child: Text(
                                              "Rose Mary",
                                              style: TextStyle(
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "4:56pm",
                                        style: TextStyle(
                                            color: Colors.black54, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: CircleAvatar(
                                    backgroundImage:
                                    AssetImage("asset/prof.jpg"),
                                    radius: 20.0,
                                  ),
                                ),
                      ]
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Text to Fill provides a flprovides a flexible latform to sell your \n products or services so that you can focus on your sales \n  provides  a flexible latform to sell your ",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey, blurRadius: 4.0)
                                      ],
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(100))),
                                  child: const Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black12,
                    height: 0.5,
                    width: 100,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "28 November 2022",
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: Colors.black12,
                    height: 0.5,
                    width: 100,
                  ),
                ],
              ),
            ),

            ListView.builder(
              physics: const ScrollPhysics(),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return const MessagesScreen();
                      }));
                    },
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5.0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Stack(
                                children: [

                                  Container(
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                      color: Color(0xfff5f5f5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [

                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: const [
                                              SizedBox(width: 45,),

                                              Padding(
                                                padding: EdgeInsets.only(top:2),
                                                child: Text(
                                                  "Rose Mary",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Text(
                                            "4:56pm",
                                            style: TextStyle(
                                                color: Colors.black54, fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: CircleAvatar(
                                      backgroundImage:
                                      AssetImage("asset/prof.jpg"),
                                      radius: 20.0,
                                    ),
                                  ),
                                ]
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Text to Fill provides a flprovides a flexible latform to sell your \n products or services so that you can focus on your sales \n  provides  a flexible latform to sell your ",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow( 
                                            color: Colors.grey, blurRadius: 4.0)
                                      ],
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                                  child: const Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
