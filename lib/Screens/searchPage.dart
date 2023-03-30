import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threeoverapp/Screens/HomeScreen.dart';

import '../MapView/MapView.dart';
import 'MyFilters.dart';
import 'NotificationScreen/NotificationScreen.dart';
import 'chatPage.dart';
import 'HobbieAndInterestPage.dart';
import '../ProfileScreen/ProfileScreen.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
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
            Align  (
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
                                print("object");
                              },
                              icon: SvgPicture.asset("asset/arrow (2).svg")),
                          const Padding(
                            padding: EdgeInsets.only(top: 15, left: 8),
                            child: Text(
                              "General Hobbies",
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 10
                          ),
                          child: Text(
                            "3D Printing",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              // image: DecorationImage(
                              //   image: AssetImage("asset/prof.jpg")
                              // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 10
                          ),
                          child: Text(
                            "3D Printing",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 10
                          ),
                          child: Text(
                            "Acting",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 10
                          ),
                          child: Text(
                            "Acroyoga",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 10
                          ),
                          child: Text(
                            "3D Printing",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          child: ClipRRect(

                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 10
                          ),
                          child: Text(
                            "Anime",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 10
                          ),
                          child: Text(
                            "3D Printing",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 10
                          ),
                          child: Text(
                            "Acroyoga",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 10
                          ),
                          child: Text(
                            "3D Printing",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 10
                          ),
                          child: Text(
                            "Anime",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 10
                          ),
                          child: Text(
                            "Acting",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 10
                          ),
                          child: Text(
                            "Acroyoga",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 10
                          ),
                          child: Text(
                            "Acting",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage("asset/prof.jpg")
                            // ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100))),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100)),
                              child: Image.asset(
                                "asset/prof.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 10
                          ),
                          child: Text(
                            "Acroyoga",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
