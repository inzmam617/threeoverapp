import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threeoverapp/Screens/FliterScreens/MyEnneagram.dart';
import 'package:threeoverapp/Screens/HomeScreen.dart';
import 'package:threeoverapp/Screens/searchPage.dart';
import '../MapView/MapView.dart';
import 'FliterScreens/ThinkerFilterSecondPage.dart';
import 'NotificationScreen/NotificationScreen.dart';
import 'chatPage.dart';
import 'HobbieAndInterestPage.dart';
import '../ProfileScreen/ProfileScreen.dart';

class filtersPage extends StatefulWidget {
  const filtersPage({Key? key}) : super(key: key);

  @override
  State<filtersPage> createState() => _filtersPageState();
}

class _filtersPageState extends State<filtersPage> {
  bool vaboxvaluelue = false;
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

                      _customDropDown("The Healer" , "INFPs are imaginative idealists, guided by their own core values and beliefs. To a Healer, possibilities are paramount; the reality of the moment is only of passing concern. They see potential for a better future and pursue truth and meaning with their own flair. The most compatible personality types for INFPs are considered the INFJ, ESFJ, and ENFJ personality types." , "INFP"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Mastermind", "INTJs are analytical problem-solvers, eager to improve systems and processes with their innovative ideas. They have a talent for seeing possibilities for improvement, whether at work, at home, or in themselves. Although two well-developed individuals of any type can enjoy a healthy relationship, the INTJ's natural partner is the ENFP, or the ENTP", "INTJ"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Counselor", "INFJs are creative nurturers with a strong sense of personal integrity and a drive to help others realize their potential. Creative and dedicated, they have a talent for helping others with original solutions to their personal challenges. INFJ's natural partner is the ENTP, or the ENFP", "INFJ"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Architect", "INTPs are philosophical innovators, fascinated by logical analysis, systems, and design. They are preoccupied with theory, and search for the universal law behind everything they see. They want to understand the unifying themes of life, in all their complexity. INTPs are typically most attracted to ENFPs, INTJs, ENTJs, and ENTPs", "INTP"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Champion", "ENFPs are people-centered creators with a focus on possibilities and a contagious enthusiasm for new ideas, people and activities. Energetic, warm, and passionate, ENFPs love to help other people explore their creative potential. The most compatible personality types for ENFP are INTJ and INFJ." , "ENFP"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Commander", "ENTJs are strategic leaders, motivated to organize change. They are quick to see inefficiency and conceptualize new solutions and enjoy developing long-range plans to accomplish their vision. They excel at logical reasoning and are usually articulate and quick-witted. ENTJ's natural partner is the INTP, or the ISTP", "ENTJ"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Visionary", "ENTPs are inspired innovators, motivated to find new solutions to intellectually challenging problems. They are curious and clever, and seek to comprehend the people, systems, and principles that surround them. ENTP's natural partner is the INFJ,or the INTJ.", "ENTP"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Teacher" , "ENFJs are idealist organizers, driven to implement their vision of what is best for humanity. They often act as catalysts for human growth because of their ability to see potential in other people and their charisma in persuading others to their ideas. The most compatible personality types for ENFJs tend to be INFP and ISFP.","ENFJ"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Protector", "ISFJs are industrious caretakers, loyal to traditions and organizations. They are practical, compassionate, and caring, and are motivated to provide for others and protect them from the perils of life. ISFJ’s best matches are ESFP, ISFP, and ISTJ", "ISFJ"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Composer" , "ISFPs are gentle caretakers who live in the present moment and enjoy their surroundings with cheerful, low-key enthusiasm.They are flexible and spontaneous, and like to go with the flow to enjoy what life has to offer. ISFP's natural partner is the ESFJ, or the ENFJ.", "ISFP"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Inspector","ISTJs are responsible organizers, driven to create and enforce order within systems and institutions. They are neat and orderly,inside and out, and tend to have a procedure for everything they do. ISTJ's natural partner is the ESFP, or the ESTP", "ISTJ" ),
                      const SizedBox(height: 10,),
                      _customDropDown("The Craftsperson" , "ISTPs are observant artisans with an understanding of mechanics and an interest in troubleshooting. They approach their environments with a flexible logic, looking for practical solutions to the problems at hand. ISTP's natural partner is the ESTJ, or the ENTJ.", "ISTP" ),
                      const SizedBox(height: 10,),
                      _customDropDown("The Provider" , "ESFJs are conscientious helpers, sensitive to the needs of others and energetically dedicated to their responsibilities. They are highly attuned to their emotional environment and attentive to both the feelings of others and the perception others have of them.The best match for the ESFJ is the ISFP" , "ESFJ"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Performer" , "ESFPs are vivacious entertainers who charm and engage those around them. They are spontaneous, energetic, and fun-loving,and take pleasure in the things around them: food, clothes, nature, animals, and especially people. The best matches for the ESFP tend to be the ISFJ and ISTJ" , "ESFP"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Supervisor" , "ESTJs are hardworking traditionalists, eager to take charge in organizing projects and people. Orderly, rule-abiding, and conscientious, ESTJs like to get things done, and tend to go about projects in a systematic, methodical way. ESTJ's natural partner is the ISTP, or the INTP." , "ESTJ"),
                      const SizedBox(height: 10,),
                      _customDropDown("The Dynamo" , "ESTPs are energetic thrill seekers who are at their best when putting out fires, whether literal or metaphorical. They bring a sense of dynamic energy to their interactions with others and the world around them. ESTP's natural partner is the ISFJ, or the ISTJ." , "ESTP"),





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
                    width: 180,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(width: 10,),
                        Center(
                          child: Text("My Personality",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
                    child: Card(


                      //color: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: ExpansionTile(
                        initiallyExpanded: true,


                        iconColor: Colors.red,
                        textColor: Colors.white,
                        title: const Text("",),
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 30,
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
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Heart Types"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
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
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Head Types"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
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
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Body Types"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
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
                        width: 180,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(width: 10,),
                            Center(
                              child: Text("My Enneagram",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
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
                    child: Card(


                      //color: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,


                        iconColor: Colors.red,
                        textColor: Colors.white,
                        title: const Text("",),
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 30,
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
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Heart Types"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
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
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Head Types"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
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
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Body Types"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
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
                        width: 180,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(width: 10,),
                            Center(
                              child: Text("My Zodiac sign",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
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
                    child: Card(

                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        iconColor: Colors.red,
                        textColor: Colors.white,
                        title: const Text("",),
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 30,
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
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Heart Types"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
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
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Head Types"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
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
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Body Types"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
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
                        width: 180,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(width: 10,),
                            Center(
                              child: Text("My Dating Personality",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
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
                          child: Card(


                            clipBehavior: Clip.antiAlias,
                            margin: EdgeInsets.zero,

                            //color: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))

                            ),
                            child: ExpansionTile(
                              initiallyExpanded: true,


                              iconColor: Colors.red,
                              textColor: Colors.white,
                              title: const Text(""),
                              children: <Widget>[

                                Stack(
                                    children:[
                                      Card(

                                        clipBehavior: Clip.antiAlias,
                                        margin: EdgeInsets.zero,
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
                                            width: 100,
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
                                                  const Text("Assertive",style: TextStyle(color: Colors.white),),
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
                                        clipBehavior: Clip.antiAlias,
                                        margin: EdgeInsets.zero,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                        ),
                                        child: ExpansionTile(
                                          initiallyExpanded: false,
                                          textColor: Colors.white,
                                          title: const Text(""),
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  const [


                                                  Text("The aggressive Style"),
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
                                            width: 210,
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  [
                                                  SizedBox(width: 5,),
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
                                                  SizedBox(width: 7,),
                                                  Text("The Passive-Aggressive Style",style: TextStyle(color: Colors.white,fontSize: 13),),
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
                                        clipBehavior: Clip.antiAlias,
                                        margin: EdgeInsets.zero,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                        ),
                                        child: ExpansionTile(
                                          initiallyExpanded: false,
                                          textColor: Colors.white,
                                          title: const Text(""),
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  const [


                                                  Text("The Passive-Aggressive Style"),
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
                                            width: 210,
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  [
                                                  const SizedBox(width: 8,),
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
                                                  SizedBox(width: 8,),
                                                  Text("The Submissive Style",style: TextStyle(color: Colors.white),),
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
                                        clipBehavior: Clip.antiAlias,
                                        margin: EdgeInsets.zero,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                        ),
                                        child: ExpansionTile(
                                          initiallyExpanded: false,
                                          textColor: Colors.white,
                                          title: const Text(""),
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  const [


                                                  Text("The aggressive Style"),
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
                                            width: 210,
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  [
                                                  const SizedBox(width: 8,),
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
                                                  const Text("The Manipulative Style",style: TextStyle(color: Colors.white),),
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
                                        clipBehavior: Clip.antiAlias,
                                        margin: EdgeInsets.zero,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                        ),
                                        child: ExpansionTile(
                                          initiallyExpanded: false,
                                          textColor: Colors.white,
                                          title: const Text(""),
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  const [


                                                  Text("The aggressive Style"),
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
                                            width: 210,
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  [
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
                                                  SizedBox(width: 8,),
                                                  Text("The Direct",style: TextStyle(color: Colors.white),),
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
                                        clipBehavior: Clip.antiAlias,
                                        margin: EdgeInsets.zero,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20))
                                        ),
                                        child: ExpansionTile(
                                          initiallyExpanded: false,
                                          textColor: Colors.white,
                                          title: const Text(""),
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  const [


                                                  Text("The aggressive Style"),
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
                                            width: 210,
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  [
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
                                                  const SizedBox(width: 10,),
                                                  const Text("The Indirect",style: TextStyle(color: Colors.white),),
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
                              width: 180,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Center(
                                    child: Text("My Communication Style",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]
                  ),
            const SizedBox(height: 20,),

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
                      return const thinkerFilter();
                    }));

                  },
                  child: const Text("Next"),
                ),
              ),
            ),
            const SizedBox(height: 20,),




            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey,
            //           blurRadius: 5.9
            //         )
            //       ],
            //       color: Colors.white,
            //       borderRadius: BorderRadius.all(Radius.circular(50))
            //     ),
            //     child: ConfigurableExpansionTile(
            //       expandedBackgroundColor: Colors.white,
            //
            //
            //      // headerExpanded: Flexible(child: Center(child: Text("A Header Changed"))),
            //       header: Container(child: Center(child: Text("A Header",style: TextStyle(color: Colors.black),))),
            //       childrenBody: Column(
            //         children: [
            //           Row(
            //             children: <Widget>[Text("CHILD 1",style: TextStyle(color: Colors.black),)],
            //           ),
            //           Row(
            //             children: <Widget>[Text("CHILD 1",style: TextStyle(color: Colors.black),)],
            //           ),
            //           Row(
            //             children: <Widget>[Text("CHILD 1",style: TextStyle(color: Colors.white),)],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
  Widget _customDropDown(head, description, title){
    return Stack(
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
                    children:  [
                      Text(head),
                      SizedBox(height: 8,),
                      Text(description,style: TextStyle(color: Colors.grey,fontSize: 10),)
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
                       Text(title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
