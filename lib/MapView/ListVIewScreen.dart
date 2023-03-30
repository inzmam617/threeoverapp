import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Screens/MyFilters.dart';
import '../Screens/NotificationScreen/NotificationScreen.dart';
import '../Screens/chatPage.dart';
import '../Screens/HobbieAndInterestPage.dart';
import '../ProfileScreen/ProfileScreen.dart';
import '../Screens/HomeScreen.dart';
import '../Screens/searchPage.dart';
import 'MapView.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List images = [
    "one.jpg",
    "two.jpeg",
    "three.jpg",
    "four.jpg",
    "five.jpeg",
    "six.jpg",
    "seven.png",
    "nine.jpeg",
    "ten.jpg",
    "eleven.jpg",
    "twelve.png",
    "thirteen.jpg",
    "fourteen.jpg",
    "fifteen.jpeg"
  ];
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
                              "List View",
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
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
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
                                    BoxShadow(color: Colors.grey, blurRadius: 5.0)
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
                            padding: const EdgeInsets.all(5),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                  return const ProfilePage();
                                }));
                              } ,
                              child: const CircleAvatar(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio:
                          ((MediaQuery.of(context).size.width / 3) / 200),
                      crossAxisCount: 3),
                  itemCount: 14,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const ProfilePage();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "asset/" + images[index],
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(30)),
                          child: Stack(
                            children:[

                              Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width / 4,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                    ),
                                    color: Color(0xffdededb)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Rose Marry",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 9),
                                      ),
                                      Text(
                                        "  Age: 22 years",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 7),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width / 6.5,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(40)
                                      ),
                                      color: Color(0xff8a8b8e),),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right:5,bottom: 5),
                                      child: Row(

                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: const [
                                          Text("50%",style: TextStyle(color: Colors.white,fontSize: 10),),
                                          Text("Matches",style: TextStyle(color: Colors.white,fontSize: 7),)
                                        ],
                                      ),
                                    ),
                                  ),

                                ),
                              ),
                            ]
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
