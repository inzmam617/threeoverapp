import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../MapView/MapView.dart';
import '../HobbieAndInterestPage.dart';
import '../HomeScreen.dart';
import '../MyFilters.dart';
import '../NotificationScreen/NotificationScreen.dart';
import '../chatPage.dart';
import '../../ProfileScreen/ProfileScreen.dart';
import '../searchPage.dart';
import 'FilterThirdPage.dart';

class thinkerFilter extends StatefulWidget {
  const thinkerFilter({Key? key}) : super(key: key);

  @override
  State<thinkerFilter> createState() => _thinkerFilterState();
}

class _thinkerFilterState extends State<thinkerFilter> {
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
          children:  [

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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                // print("object");
                              },
                              icon: SvgPicture.asset("asset/arrow (2).svg")),
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "My Filters",
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
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        )),
                    child: const Center(
                      child: Text(
                        "2",
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
                ],
              ),
            ),
            const SizedBox(height: 20,),
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
                                            Text("Creative Thinking"),
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
                                      width: 200,
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
                                            const Text("Creative Thinking",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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


                                            Text("The Analytical Thinking"),
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
                                      width: 200,
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
                                            const Text("Analytical Thinking",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
                          const SizedBox(height: 10,),
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
                                            Text("Creative Thinking"),
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
                                      width: 200,
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
                                            const Text("Critical Thinking",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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


                                            Text("The Analytical Thinking"),
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
                                      width: 200,
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
                                            const Text("Abstract Thnking",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
                          const SizedBox(height: 10,),
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
                                            Text("Creative Thinking"),
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
                                      width: 200,
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
                                            const Text("Divergent Thinking",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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


                                            Text("The Analytical Thinking"),
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
                                      width: 200,
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
                                            const Text("Divergent Thinking",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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


                                            Text("The Analytical Thinking"),
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
                                      width: 200,
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
                                            const Text("Convergent Thinking",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
                      width: 200,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(width: 10,),
                          Center(
                            child: Text("What type of thinker am I?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
            ),
            const SizedBox(height: 20,),

            Center(
              child: SizedBox(
                width: 170,
                height: 40,
                child: ElevatedButton(

                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xff1E202D),),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
                  onPressed: () {
                    //
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return const FilterThirdPage();
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
}
