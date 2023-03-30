import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../MapView/MapView.dart';
import '../../ProfileScreen/ProfileScreen.dart';
import '../HobbieAndInterestPage.dart';
import '../HomeScreen.dart';
import '../chatPage.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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

  final List<String> _values = [
    'Hey buddy, Looking good man',
    'Noah man! I Knew it.',
    'You look good',
    'I need your keys',
    'Wanna meet'
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
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5,
              height: 40,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3.0)],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(55),
                      bottomRight: Radius.circular(55))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: SvgPicture.asset("asset/arrow (2).svg")),
                  const Text(
                    "Notifications",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(
                   // horizontal: 20,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 80,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                          image: AssetImage("asset/prof.jpg",))),
                                ),
                                const SizedBox(width: 20,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Text("Name",style: TextStyle(color: Colors.black ,fontSize: 16),),
                                        SizedBox(width: 10,),
                                        Text("is now following you",style: TextStyle(color: Colors.grey , fontSize: 12),)
                                      ],
                                    ),
                                    const Text("Noah man i missed you!" , style: TextStyle(color: Colors.red),),
                                    const Text("8 mins ago",style: TextStyle(color: Colors.grey,fontSize: 10),)
                                  ],
                                ),
                              ],
                            ),

                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2.0
                                    )
                                  ]

                                ),

                                height: 20,
                                width: 40,
                                child: const Center(
                                  child: Text("new",style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )

                  // Dismissible(
                  //     key: Key('item ${_values[index]}'),
                  //   background: Container(
                  //     color: Colors.white,
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(15),
                  //       child: Row(
                  //         children: const [
                  //           Icon(Icons.delete, color: Colors.red),
                  //           Text('Delete', style: TextStyle(color: Colors.redAccent)),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  //   secondaryBackground: Container(
                  //     color: Colors.white,
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(15),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.end,
                  //         children: const [
                  //           Icon(Icons.delete, color: Colors.red),
                  //           Text('Delete', style: TextStyle(color: Colors.redAccent)),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  //     child: Container(
                  //       decoration: const BoxDecoration(
                  //         boxShadow: [
                  //           BoxShadow(
                  //             color: Colors.grey,
                  //             blurRadius: 2.0
                  //           )
                  //         ],
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.all(Radius.circular(20)),
                  //
                  //       ),
                  //       height: 100,
                  //       width: MediaQuery.of(context).size.width,
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //
                  //           Row(
                  //             children: [
                  //
                  //             ],
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  // ),

                  );
            },
          )
        ]),
      ),
    );
  }
}
