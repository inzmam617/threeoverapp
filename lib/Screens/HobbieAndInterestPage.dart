import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threeoverapp/Screens/HomeScreen.dart';
import 'package:threeoverapp/Screens/InerPages/EducationalHobbies.dart';
import 'package:threeoverapp/Screens/searchPage.dart';

import '../MapView/MapView.dart';
import 'InerPages/CollectionHobbies/InDoorHobbies.dart';
import 'InerPages/CollectionHobbies/OutDoorHobbiess.dart';
import 'InerPages/CompetitiveHobbies/CompetitiveInDoorHobbies.dart';
import 'InerPages/CompetitiveHobbies/CompetitivveOutDoorHobbies.dart';
import 'InerPages/GeneralHobbies.dart';
import 'InerPages/ObervationHobbies/ObservationHobbiesOutDoor.dart';
import 'InerPages/ObervationHobbies/ObservationHobiesIndoors.dart';
import 'InerPages/OuDoorsSports.dart';
import 'MyFilters.dart';
import 'NotificationScreen/NotificationScreen.dart';
import 'chatPage.dart';
import '../ProfileScreen/ProfileScreen.dart';

class HobbiesAndInterest extends StatefulWidget {
  const HobbiesAndInterest({Key? key}) : super(key: key);

  @override
  State<HobbiesAndInterest> createState() => _HobbiesAndInterestState();
}

class _HobbiesAndInterestState extends State<HobbiesAndInterest> {
  int _selectedIndex = 0;

  Future<void> _onItemTapped(int index) async {
    _selectedIndex = index;
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
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
                  height: 45,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 2.0)
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
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
                              icon:  SvgPicture.asset("asset/arrow (2).svg")),
                          const Padding(
                            padding: EdgeInsets.only(top: 15, left:  8),
                            child: Text("My Hobbies & Interest",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
                          ),
                        ],
                      ),
                      Row(
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
                                    onPressed: () {},
                                    icon: SvgPicture.asset("asset/info.svg")),
                              ),
                            ),
                          ),
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
                           Padding(
                            padding: EdgeInsets.all(5),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                  return ProfilePage();
                                }));
                              },
                              child: CircleAvatar(
                                backgroundImage: AssetImage("asset/prof.jpg"),
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
            const SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return const GeneralHobbies();
                  }));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0
                          )
                        ],
                        color: Colors.white,

                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 10
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("General Hobbies",style: TextStyle(color: Colors.grey),),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(5, -15),
                      child: Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.red,
                                blurRadius: 2.0
                              )
                            ],
                            borderRadius: const BorderRadius.all(Radius.circular(100)),
                              color: Colors.white,
                            border: Border.all(
                              color: Colors.red
                            )
                          ),

                          width: 100,
                          height: 100,

                          child: Center(
                            child: SvgPicture.asset("asset/hobby (2).svg"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return const OutDoorAndSports();
                  }));
                },

                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0
                            )
                          ],
                          color: Colors.white,

                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 10
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Outdoors and sports",style: TextStyle(color: Colors.grey),),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(5, -15),
                      child: Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 2.0
                                )
                              ],
                              borderRadius: const BorderRadius.all(Radius.circular(100)),
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.red
                              )
                          ),

                          width: 100,
                          height: 100,

                          child: Center(
                            child: SvgPicture.asset("asset/sports.svg"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return EducationalHobbies();
                  }));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0
                            )
                          ],
                          color: Colors.white,

                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 10
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Educational hobbies",style: TextStyle(color: Colors.grey),),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(5, -15),
                      child: Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 2.0
                                )
                              ],
                              borderRadius: const BorderRadius.all(Radius.circular(100)),
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.red
                              )
                          ),

                          width: 100,
                          height: 100,

                          child: Center(
                            child: SvgPicture.asset("asset/edu.svg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0
                    )
                  ],
                  color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Collection hobbies",style: TextStyle(fontSize: 13),),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 75,
                      height: 35,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff1E202D),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const InDoorHobbies();
                          }));
                        },
                        child: const Text("Indoors",style: TextStyle(fontSize: 10),),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    SizedBox(
                      width: 75,
                      height: 35,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff1E202D),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const OutDoorHobbies();
                          }));
                        },
                        child: const Text("Outdoors",style: TextStyle(fontSize: 9),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Competitive hobbies",style: TextStyle(fontSize: 13),),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 75,
                      height: 35,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff1E202D),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const CompetitiveIndoorHobbies();
                          }));
                        },
                        child: const Text("Indoors",style: TextStyle(fontSize: 10),),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    SizedBox(
                      width: 75,
                      height: 35,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff1E202D),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const CompetitiveOutDoorHobbies();
                          }));
                        },
                        child: const Text("Outdoors",style: TextStyle(fontSize: 9),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Observation hobbies",style: TextStyle(fontSize: 13),),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 75,
                      height: 35,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff1E202D),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const ObservationHobbiesInDoor();
                          }));
                        },
                        child: const Text("Indoors",style: TextStyle(fontSize: 10),),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    SizedBox(
                      width: 75,
                      height: 35,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff1E202D),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const ObservationHobbiesOutDoor();
                          }));
                        },
                        child: const Text("Outdoors",style: TextStyle(fontSize: 9),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
