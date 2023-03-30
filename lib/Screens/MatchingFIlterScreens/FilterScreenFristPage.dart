import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../MapView/MapView.dart';
import '../HomeScreen.dart';
import '../MyFilters.dart';
import '../NotificationScreen/NotificationScreen.dart';
import '../chatPage.dart';
import '../HobbieAndInterestPage.dart';
import '../../ProfileScreen/ProfileScreen.dart';
import '../searchPage.dart';
import 'FilterScreenSecondPage.dart';

class MyFilterFirstScreen extends StatefulWidget {
  const MyFilterFirstScreen({Key? key}) : super(key: key);

  @override
  State<MyFilterFirstScreen> createState() => _MyFilterFirstScreenState();
}

class _MyFilterFirstScreenState extends State<MyFilterFirstScreen> {
  int _selectedIndex = 0;
  Future<void> _onItemTapped(int index) async {
    _selectedIndex = index;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return _children[_selectedIndex];
    }));
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
  bool vaboxvaluelue = false;
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
                                // print("object");
                              },
                              icon: SvgPicture.asset("asset/arrow (2).svg")),
                          const Padding(
                            padding: EdgeInsets.only(top: 15, left: 8),
                            child: Text(
                              "My Matching Filters",
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        )),
                    child: const Center(
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      color: Colors.grey,
                      height: 0.5,
                      width: MediaQuery.of(context).size.width / 3.5,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      color: Colors.grey,
                      height: 0.5,
                      width: MediaQuery.of(context).size.width / 3.5,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0)
                        ],
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
                children:[

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(

                                color: Colors.grey,
                                blurRadius: 3.0
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),


                      //color: Colors.black,
                      // shape: const RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(20))
                      //
                      // ),
                      child: ExpansionTile(
                        initiallyExpanded: true,


                        iconColor: Colors.red,
                        textColor: Colors.white,
                        title: const Text("",),
                        children: <Widget>[
                          Stack(
                              children:[
                                Card(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: ExpansionTile(
                                    textColor: Colors.white,
                                    title: const Text(""),
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: const [
                                            Text("The Mastermind"),
                                            Text("INTJs are analytical problem-solvers, eager to improve systems and whether at work, at home, or in themselves. Although two well-developed indi, the INTJ's natural partner is the ENFP, or the ENTP.",style: TextStyle(color: Colors.grey,fontSize: 10),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 3.0
                                            )
                                          ],
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),

                                          )
                                      ),
                                      height: 30,
                                      width: 80,
                                      child: Center(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [

                                            Container(
                                                width: 15,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.99),
                                                      blurRadius: 1,
                                                      offset: const Offset(0, 0.5),
                                                    ),
                                                  ],
                                                ),
                                                child: Checkbox(
                                                  checkColor: Colors.green,
                                                  fillColor: MaterialStateProperty.all(Colors.white),
                                                  value: vaboxvaluelue,
                                                  shape: RoundedRectangleBorder(
                                                    // Making around shape
                                                      borderRadius: BorderRadius.circular(30)),
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      vaboxvaluelue = value!;
                                                    });
                                                  },
                                                )),
                                            const SizedBox(width: 8,),
                                            const Text("INFP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                            //     const SizedBox(width: 5,),
                                            //     Center(
                                            //       child: Transform.rotate(angle:  180 * math.pi / 180,child: const Icon(Icons.arrow_back_ios_new_sharp,size: 10,color: Colors.white,),),
                                            //     ),
                                            // const SizedBox(width: 5,)

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                          const SizedBox(height: 10,),
                          Stack(
                              children:[
                                Card(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: ExpansionTile(
                                    initiallyExpanded: true,
                                    textColor: Colors.white,
                                    title: const Text(""),
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children:  const [


                                            Text("The Mastermind"),
                                            Text("INTJs are analytical problem-solvers, eager to improve systems and whether at work, at home, or in themselves. Although two well-developed indi, the INTJ's natural partner is the ENFP, or the ENTP.",style: TextStyle(color: Colors.grey,fontSize: 10),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 3.0
                                            )
                                          ],
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),

                                          )
                                      ),
                                      height: 30,
                                      width: 80,
                                      child: Center(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                width: 15,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black.withOpacity(0.99),
                                                      blurRadius: 1,
                                                      offset: const Offset(0, 0.5),
                                                    ),
                                                  ],
                                                ),
                                                child: Checkbox(
                                                  checkColor: Colors.green,
                                                  fillColor: MaterialStateProperty.all(Colors.white),
                                                  value: vaboxvaluelue,
                                                  shape: RoundedRectangleBorder(
                                                    // Making around shape
                                                      borderRadius: BorderRadius.circular(30)),
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      vaboxvaluelue = value!;
                                                    });
                                                  },
                                                )),
                                            const SizedBox(width: 8,),
                                            const Text("INTJ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                            // const SizedBox(width: 5,),
                                            // Center(
                                            //   child: Transform.rotate(angle:  180 * math.pi / 180,child: const Icon(Icons.arrow_back_ios_new_sharp,size: 10,color: Colors.white,),),
                                            // ),
                                            // const SizedBox(width: 5,)

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3.0
                            )
                          ],
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),

                          )
                      ),
                      height: 40,
                      width: 220,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10,),
                          Center(
                            child: Text("My Matches Personality should be:",style: TextStyle(color: Colors.white,fontSize:10),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
                children:[

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(

                                color: Colors.grey,
                                blurRadius: 3.0
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),


                      //color: Colors.black,
                      // shape: const RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(20))
                      //
                      // ),
                      child:  ExpansionTile(
                        initiallyExpanded: true,


                        iconColor: Colors.red,
                        textColor: Colors.white,
                        title: const Text("",),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: [
                                Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width /5,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomLeft: Radius.circular(20)
                                            )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: 14,
                                                  height: 14,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 3.0,
                                                        offset: const Offset(0, 0.5),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Checkbox(
                                                    checkColor: Colors.green,
                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                    value: vaboxvaluelue,
                                                    shape: RoundedRectangleBorder(
                                                      // Making around shape
                                                        borderRadius: BorderRadius.circular(30)),
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        vaboxvaluelue = value!;
                                                      });
                                                    },
                                                  )),
                                              const SizedBox(width: 8,),
                                              const Text("Aries",style: TextStyle(
                                                color: Colors.white
                                              ),)

                                            ],
                                          ),
                                        ),
                                        Container(
                                          width:MediaQuery.of(context).size.width /5,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3.0,
                                                  offset: const Offset(0, 0.5),
                                                ),
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Text("March 21-April 19",style: TextStyle(

                                                fontSize: 9,
                                                color: Colors.black
                                              ),)

                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width /5,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: 14,
                                                  height: 14,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 3.0,
                                                        offset: Offset(0, 0.5),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Checkbox(
                                                    checkColor: Colors.green,
                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                    value: vaboxvaluelue,
                                                    shape: RoundedRectangleBorder(
                                                      // Making around shape
                                                        borderRadius: BorderRadius.circular(30)),
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        vaboxvaluelue = value!;
                                                      });
                                                    },
                                                  )),
                                              const SizedBox(width: 8,),
                                              const Text("Taurus",style: TextStyle(
                                                  color: Colors.white
                                              ),)

                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width /5,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3.0,
                                                  offset: const Offset(0, 0.5),
                                                ),
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Text("April 20-May 20",style: TextStyle(

                                                  fontSize: 9,
                                                  color: Colors.black
                                              ),)

                                            ],
                                          ),
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: MediaQuery.of(context).size.width /5,
                                            decoration: const BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(20),
                                                    bottomLeft: Radius.circular(20)
                                                )
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width: 14,
                                                    height: 14,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey,
                                                          blurRadius: 3.0,
                                                          offset: const Offset(0, 0.5),
                                                        ),
                                                      ],
                                                    ),
                                                    child: Checkbox(
                                                      checkColor: Colors.green,
                                                      fillColor: MaterialStateProperty.all(Colors.white),
                                                      value: vaboxvaluelue,
                                                      shape: RoundedRectangleBorder(
                                                        // Making around shape
                                                          borderRadius: BorderRadius.circular(30)),
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          vaboxvaluelue = value!;
                                                        });
                                                      },
                                                    )),
                                                const SizedBox(width: 8,),
                                                const Text("Gemini",style: TextStyle(
                                                    color: Colors.white
                                                ),)

                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: MediaQuery.of(context).size.width /5,
                                            decoration: const BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 3.0,
                                                    offset: const Offset(0, 0.5),
                                                  ),
                                                ],
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(20),
                                                    bottomRight: Radius.circular(20)
                                                )
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Text("May 21-June 20",style: TextStyle(

                                                    fontSize: 9,
                                                    color: Colors.black
                                                ),)

                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: 14,
                                                  height: 14,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 3.0,
                                                        offset: Offset(0, 0.5),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Checkbox(
                                                    checkColor: Colors.green,
                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                    value: vaboxvaluelue,
                                                    shape: RoundedRectangleBorder(
                                                      // Making around shape
                                                        borderRadius: BorderRadius.circular(30)),
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        vaboxvaluelue = value!;
                                                      });
                                                    },
                                                  )),
                                              const SizedBox(width: 8,),
                                              const Text("Cancer",style: TextStyle(
                                                  color: Colors.white
                                              ),)

                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3.0,
                                                  offset: const Offset(0, 0.5),
                                                ),
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Text("June 21-July 22",style: TextStyle(

                                                  fontSize: 9,
                                                  color: Colors.black
                                              ),)

                                            ],
                                          ),
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: 14,
                                                  height: 14,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 3.0,
                                                        offset: const Offset(0, 0.5),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Checkbox(
                                                    checkColor: Colors.green,
                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                    value: vaboxvaluelue,
                                                    shape: RoundedRectangleBorder(
                                                      // Making around shape
                                                        borderRadius: BorderRadius.circular(30)),
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        vaboxvaluelue = value!;
                                                      });
                                                    },
                                                  )),
                                              const SizedBox(width: 8,),
                                              const Text("Leo",style: TextStyle(
                                                  color: Colors.white
                                              ),)

                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3.0,
                                                  offset: const Offset(0, 0.5),
                                                ),
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Text("July 23-August 22",style: TextStyle(

                                                  fontSize: 9,
                                                  color: Colors.black
                                              ),)

                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: 14,
                                                  height: 14,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 3.0,
                                                        offset: Offset(0, 0.5),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Checkbox(
                                                    checkColor: Colors.green,
                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                    value: vaboxvaluelue,
                                                    shape: RoundedRectangleBorder(
                                                      // Making around shape
                                                        borderRadius: BorderRadius.circular(30)),
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        vaboxvaluelue = value!;
                                                      });
                                                    },
                                                  )),
                                              const SizedBox(width: 8,),
                                              const Text("Virgo",style: TextStyle(
                                                  color: Colors.white
                                              ),)

                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3.0,
                                                  offset: const Offset(0, 0.5),
                                                ),
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Text("August 23-July 22",style: TextStyle(

                                                  fontSize: 9,
                                                  color: Colors.black
                                              ),)

                                            ],
                                          ),
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: 14,
                                                  height: 14,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 3.0,
                                                        offset: const Offset(0, 0.5),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Checkbox(
                                                    checkColor: Colors.green,
                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                    value: vaboxvaluelue,
                                                    shape: RoundedRectangleBorder(
                                                      // Making around shape
                                                        borderRadius: BorderRadius.circular(30)),
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        vaboxvaluelue = value!;
                                                      });
                                                    },
                                                  )),
                                              const SizedBox(width: 8,),
                                              const Text("Libra",style: TextStyle(
                                                  color: Colors.white
                                              ),)

                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3.0,
                                                  offset: const Offset(0, 0.5),
                                                ),
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Text("Sept 23-Oct 22",style: TextStyle(

                                                  fontSize: 9,
                                                  color: Colors.black
                                              ),)

                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [

                                              const SizedBox(width: 5,),
                                              Container(
                                                  width: 14,
                                                  height: 14,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 3.0,
                                                        offset: Offset(0, 0.5),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Checkbox(
                                                    checkColor: Colors.green,
                                                    fillColor: MaterialStateProperty.all(Colors.white),
                                                    value: vaboxvaluelue,
                                                    shape: RoundedRectangleBorder(
                                                      // Making around shape
                                                        borderRadius: BorderRadius.circular(30)),
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        vaboxvaluelue = value!;
                                                      });
                                                    },
                                                  )),
                                              const SizedBox(width: 5,),
                                              const Text("Scorpio",style: TextStyle(
                                                  color: Colors.white
                                              ),)

                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: MediaQuery.of(context).size.width /5,
                                          decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3.0,
                                                  offset: const Offset(0, 0.5),
                                                ),
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)
                                              )
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: const [
                                              Text("Oct 23-Nov 21",style: TextStyle(

                                                  fontSize: 9,
                                                  color: Colors.black
                                              ),)

                                            ],
                                          ),
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                                SizedBox(height: 10,),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3.0
                            )
                          ],
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),

                          )
                      ),
                      height: 40,
                      width: 200,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10,),
                          Center(
                            child: Text("My Matches Zodiac Sign should be:",style: TextStyle(color: Colors.white,fontSize: 10),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
                children:[

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(

                                color: Colors.grey,
                                blurRadius: 3.0
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),


                      //color: Colors.black,
                      // shape: const RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(20))
                      //
                      // ),
                      child:  ExpansionTile(
                        initiallyExpanded: true,


                        iconColor: Colors.red,
                        textColor: Colors.white,
                        title: const Text("",),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: [
                                redcustomstack("Assertive"),
                                redcustomstack("The aggressive Style"),
                                redcustomstack("The Submissive Style"),
                                redcustomstack("The Manipulative Style"),
                                redcustomstack("Direct"),
                                redcustomstack("InDirect"),



                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3.0
                            )
                          ],
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),

                          )
                      ),
                      height: 40,
                      width: 220,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10,),
                          Center(
                            child: Text("My Matches Dating Personality should be:",style: TextStyle(color: Colors.white,fontSize:10,),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
            ),
            const SizedBox(height: 20),
            customstack("My Matches Communication Style should be:"),
            const SizedBox(
              height: 10,
            ),
            customstack("What type of a thinker should my match be?:"),
            const SizedBox(
              height: 10,
            ),
            customstack("What's the Love Language of my match?"),
            const SizedBox(
              height: 10,
            ),
            customstack("What Kind of Relationship should my match watch?"),
            const SizedBox(
              height: 10,
            ),
            customstack("What's my matches attachment style?"),
            const SizedBox(
              height: 10,
            ),

            Center(
              child: SizedBox(
                width: 150,
                height: 38,
                child: ElevatedButton(

                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xff1E202D),),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
                  onPressed: () {
                    //
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return const MatchingFilterSecondScreen();
                    }));

                  },
                  child: const Text("Next"),
                ),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
  //Black Custom Widget
  Widget customstack(text){
    return  Stack(
        children:[

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(


              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.zero,

              //color: Colors.black,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))

              ),
              child: ExpansionTile(
                initiallyExpanded: false,


                iconColor: Colors.red,
                textColor: Colors.white,
                title: const Text(""),
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3.0
                                    )
                                  ],
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),

                                  )
                              ),
                              height: 30,
                              width: 120,
                              child: Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    const SizedBox(width: 5,),
                                    Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.99),
                                              blurRadius: 1,
                                              offset: const Offset(0, 0.5),
                                            ),
                                          ],
                                        ),
                                        child: Checkbox(
                                          checkColor: Colors.green,
                                          fillColor: MaterialStateProperty.all(Colors.white),
                                          value: vaboxvaluelue,
                                          shape: RoundedRectangleBorder(
                                            // Making around shape
                                              borderRadius: BorderRadius.circular(30)),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              vaboxvaluelue = value!;
                                            });
                                          },
                                        )),
                                    const SizedBox(width: 8,),
                                    const Text("The Giver",style: TextStyle(color: Colors.white),),
                                    //     const SizedBox(width: 5,),
                                    //     Center(
                                    //       child: Transform.rotate(angle:  180 * math.pi / 180,child: const Icon(Icons.arrow_back_ios_new_sharp,size: 10,color: Colors.white,),),
                                    //     ),
                                    // const SizedBox(width: 5,)

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3.0
                                    )
                                  ],
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),

                                  )
                              ),
                              height: 30,
                              width: 120,
                              child: Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    const SizedBox(width: 5,),
                                    Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.99),
                                              blurRadius: 1,
                                              offset: const Offset(0, 0.5),
                                            ),
                                          ],
                                        ),
                                        child: Checkbox(
                                          checkColor: Colors.green,
                                          fillColor: MaterialStateProperty.all(Colors.white),
                                          value: vaboxvaluelue,
                                          shape: RoundedRectangleBorder(
                                            // Making around shape
                                              borderRadius: BorderRadius.circular(30)),
                                          onChanged: (bool? value) {
                                            setState(() {
                                              vaboxvaluelue = value!;
                                            });
                                          },
                                        )),
                                    const SizedBox(width: 8,),
                                    const Text("The Achiever",style: TextStyle(color: Colors.white),),
                                    //     const SizedBox(width: 5,),
                                    //     Center(
                                    //       child: Transform.rotate(angle:  180 * math.pi / 180,child: const Icon(Icons.arrow_back_ios_new_sharp,size: 10,color: Colors.white,),),
                                    //     ),
                                    // const SizedBox(width: 5,)

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )



                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3.0
                      )
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),

                    )
                ),
                height: 40,
                width: 240,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const SizedBox(width: 5,),
                    Center(
                      child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 10,),
                    ),)
                  ],
                ),
              ),
            ),
          ),
        ]
    );
  }


  //Red Custom widget
  Widget redcustomstack (text){
    return   Stack(
        children:[
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: ExpansionTile(
              initiallyExpanded: true,

              textColor: Colors.white,
              title: const Text(""),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("The Mastermind"),
                      Text("INTJs are analytical problem-solvers, eager to improve systems and whether at work, at home, or in themselves. Although two well-developed indi, the INTJ's natural partner is the ENFP, or the ENTP.",style: TextStyle(color: Colors.grey,fontSize: 10),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3.0
                      )
                    ],
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),

                    )
                ),
                height: 30,
                width: 160,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      const SizedBox(width: 10,),
                      Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.99),
                                blurRadius: 1,
                                offset: const Offset(0, 0.5),
                              ),
                            ],
                          ),
                          child: Checkbox(
                            checkColor: Colors.green,
                            fillColor: MaterialStateProperty.all(Colors.white),
                            value: vaboxvaluelue,
                            shape: RoundedRectangleBorder(
                              // Making around shape
                                borderRadius: BorderRadius.circular(30)),
                            onChanged: (bool? value) {
                              setState(() {
                                vaboxvaluelue = value!;
                              });
                            },
                          )),
                      const SizedBox(width: 8,),
                       Text(text,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 11),),
                      //     const SizedBox(width: 5,),
                      //     Center(
                      //       child: Transform.rotate(angle:  180 * math.pi / 180,child: const Icon(Icons.arrow_back_ios_new_sharp,size: 10,color: Colors.white,),),
                      //     ),
                      // const SizedBox(width: 5,)

                    ],
                  ),
                ),
              ),
            ),
          ),
        ]
    );
  }
}
