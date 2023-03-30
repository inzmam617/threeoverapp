import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threeoverapp/Screens/HomeScreen.dart';
import 'package:threeoverapp/Screens/searchPage.dart';

import '../MapView/MapView.dart';
import 'MyFilters.dart';
import 'NotificationScreen/NotificationScreen.dart';
import 'chatPage.dart';
import 'HobbieAndInterestPage.dart';
import '../ProfileScreen/ProfileScreen.dart';

class reviewsPage extends StatefulWidget {
  const reviewsPage({Key? key}) : super(key: key);

  @override
  State<reviewsPage> createState() => _reviewsPageState();
}

class _reviewsPageState extends State<reviewsPage> {
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
  double ratings = 0.0;
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
                              icon: SvgPicture.asset("asset/arrow (2).svg")),
                          const Padding(
                            padding: EdgeInsets.only(top: 15, left: 8),
                            child: Text(
                              "My Reviews",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
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
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                        "asset/notification-svgrepo-com.svg")),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("asset/prof.jpg"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            ListView.builder(
              physics: const ScrollPhysics(),
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 5,
                                  left: 10, top: 10,bottom: 10),
                              child: Container(
                                width: 130,
                                height: 45,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                                  color: Color(0xffec5958),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const  CircleAvatar(
                                        backgroundImage:
                                        AssetImage("asset/prof.jpg"),
                                        radius: 24.0,
                                      ),
                                      Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20)
                                            )
                                          ),
                                        child: RatingBar.builder(
                                          ignoreGestures: true,
                                          itemSize: 13,
                                          initialRating: 2.0,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          //itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                                          itemBuilder: (context, _) => const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            setState(() {
                                              ratings = rating;
                                            });
                                            print(rating);
                                          },
                                        ),
                                      ),

                                    ],


                                  ),
                                ),


                              ),
                            ),
                            const Text("Rose Mary",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Text to Fill provides a flprovides a flexible latform to sell your \n products or services so that you can focus on your sales form to sell your ",
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (BuildContext context, int index) {
            //   return Padding(padding: const EdgeInsets.symmetric(horizontal: 20),child: Container(
            //     height: 200,
            //     decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(30)),
            //       color: Colors.white,
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey,blurRadius: 5.0
            //         )
            //       ]
            //     ),
            //   ),);
            // },)
          ],
        ),
      ),
    );
  }
}
