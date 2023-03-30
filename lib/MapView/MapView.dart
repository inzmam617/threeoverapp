import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Screens/MyFilters.dart';
import '../Screens/NotificationScreen/NotificationScreen.dart';
import '../Screens/chatPage.dart';
import '../Screens/HobbieAndInterestPage.dart';
import '../ProfileScreen/ProfileScreen.dart';
import '../Screens/HomeScreen.dart';
import '../Screens/searchPage.dart';
import 'ListVIewScreen.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List images = [
      "one.jpg",
      "two.jpeg",
      "three.jpg",
      "four.jpg",
      "five.jpeg",
      "six.jpg",
      "seven.png",
      "nine.jpeg",
      "ten.jpg"
    ];
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
    int _selectedIndex = 0;
    Future<void> _onItemTapped(int index) async {
      _selectedIndex = index;
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return _children[_selectedIndex];
      }));
    }

    bool vaboxvaluelue = false;
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
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("asset/map.jpg",fit: BoxFit.cover,),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Container(
                height: 45,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)],
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
                            icon: SvgPicture.asset("asset/arrow (2).svg")),
                        const Padding(
                          padding: EdgeInsets.only(top: 15, left: 8),
                          child: Text(
                            "Map View",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 145,
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 1.0,
                                )
                              ]),
                          child: Center(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                 // contentPadding: EdgeInsets.only(top: 10),
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search_outlined),
                                hintStyle: TextStyle(color: Colors.grey),
                                hintText: "Search"
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                return const ProfilePage();
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
          Align(
            alignment: Alignment.bottomCenter,
              child:  Container(

                decoration: const BoxDecoration(
                    color: Color(0xffe0e1de),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Matches in Your Area",style: TextStyle(color: Colors.white),),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                return ListViewScreen();
                              }));
                            },
                              child: const Text("View All",style: TextStyle(color: Colors.white),))
                        ],
                      ),
                    ),
                    const SizedBox(height: 4,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: 9,
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children:  [
                              CircleAvatar(
                                radius: 36,
                                backgroundImage: AssetImage("asset/" + images[index] ),
                              ),
                              const Text("Rose",style: TextStyle(color: Colors.black54),)
                            ],
                          ),
                        );
                      },),
                    ),)
                  ],
                )
              )
          )
        ],
      ),
    );
  }
}
