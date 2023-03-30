import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:threeoverapp/Screens/chatPage.dart';
import 'package:threeoverapp/Screens/HobbieAndInterestPage.dart';
import 'package:threeoverapp/Screens/HomeScreen.dart';
import 'package:threeoverapp/Screens/searchPage.dart';

import '../MapView/MapView.dart';
import '../Screens/NotificationScreen/NotificationScreen.dart';
import '../utils/Drawer.dart';
import '../Screens/MyFilters.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  @override
  void initState() {}
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: (MediaQuery.of(context).size.width) /1.8,
        child: const MainDrawer(),
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
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Image.asset(
                    "asset/hill.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Builder(
                      builder: (context) {
                        return InkWell(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                            print("object");

                          },
                          child: Container(
                            width: 100,
                            height: 35,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50)),
                                color: Color(0xff4a7a7b)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset("asset/more.svg"),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff6da3a7),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50))),
                                  child: Center(
                                      child: SvgPicture.asset(
                                    "asset/heart.svg",
                                    height: 25,
                                    width: 25,
                                    fit: BoxFit.scaleDown,
                                  )),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Builder(
                        builder: (context) {
                          return InkWell(
                            onTap: () {
                             // Scaffold.of(context).openDrawer();
                              print("object");

                            },
                            child: Container(
                              width: 80,
                              height: 30,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50)),
                                  color: Color(0xff4a7a7b)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(width: 8,),
                                  Container(
                                    height: 18,
                                    width: 18,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 3.0
                                        )
                                      ]
                                    ),
                                  ),
                                  const SizedBox(width: 8,),
                                  const Text("Online",style: TextStyle(color: Colors.white,fontSize: 10),)
                                  // const SizedBox(
                                  //   width: 10,
                                  // ),
                                  // SvgPicture.asset("asset/more.svg"),
                                  // Container(
                                  //   width: 35,
                                  //   height: 35,
                                  //   decoration: const BoxDecoration(
                                  //       color: Color(0xff6da3a7),
                                  //       borderRadius:
                                  //       BorderRadius.all(Radius.circular(50))),
                                  //   child: Center(
                                  //       child: SvgPicture.asset(
                                  //         "asset/heart.svg",
                                  //         height: 25,
                                  //         width: 25,
                                  //         fit: BoxFit.scaleDown,
                                  //       )),
                                  // )
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: const Offset(0, -40),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  //height: 80,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 2.0)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Transform.translate(
                                offset: const Offset(0, -10),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                        )
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  height: 55,
                                  width: 55,
                                  child: const CircleAvatar(
                                    backgroundImage:
                                        AssetImage("asset/prof.jpg"),
                                    radius: 100,
                                  ),
                                ),
                              ),
                              const Text(
                                "Sophia Lily",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Profile reached",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 9),
                              ),
                              const Text(
                                "235",
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const SizedBox(
                            height: 85,
                            child: VerticalDivider(
                              color: Colors.grey,
                              width: 5,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
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
                              percent: 0.1,
                              radius: 45,
                              lineWidth: 3,
                              backgroundColor: Colors.transparent,
                              progressColor: Colors.green,
                              center: Container(
                                height: 80,
                                width: 80,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.green, blurRadius: 2.5)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Center(
                                    child: Text("       24% \n Completed",
                                        style: TextStyle(
                                            color: Colors.grey.shade900,
                                            fontSize: 13))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 90,
                            width: 90,
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
                              percent: 0.6,
                              radius: 45,
                              lineWidth: 3,
                              backgroundColor: Colors.transparent,
                              progressColor: Colors.red,
                              center: Container(
                                height: 80,
                                width: 80,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.red, blurRadius: 2.5)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Center(
                                    child: Text("       24% \n Completed",
                                        style: TextStyle(
                                            color: Colors.grey.shade900,
                                            fontSize: 13))),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 5.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        top: 40, left: 10, right: 10, bottom: 5),
                    child: Text(
                      "Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales Fill provides a flexible platform to sell your products or services so that you can focus on your sales. ",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                          )
                        ],
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Today sophia is feeling",
                          style: TextStyle(color: Colors.white70, fontSize: 11),
                        ),
                        Text(
                          " Happy",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 11),
                        )
                      ],
                    )),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                        )
                      ],
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "My Showcase",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: ((MediaQuery.of(context).size.width / 3)  / 200),
                      crossAxisCount: 3),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                  "asset/prof.jpg",
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(35)),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: fav != false
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.white38,
                                    size: 15,
                                  )
                                : const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                              size: 15,

                                  ),
                            onPressed: () {
                              setState(() {
                                fav = !fav;
                              });

                              print(fav);
                            },
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
