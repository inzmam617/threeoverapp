import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompetitiveIndoorHobbies extends StatefulWidget {
  const CompetitiveIndoorHobbies({Key? key}) : super(key: key);

  @override
  State<CompetitiveIndoorHobbies> createState() => _CompetitiveIndoorHobbiesState();
}

class _CompetitiveIndoorHobbiesState extends State<CompetitiveIndoorHobbies> {
  bool vaboxvaluelue= false;
  List values = [
    "Air hockey",
    "Animal fancy[158]",
    "Axe throwing",
    "Backgammon",
    "Badminton[159]",
    "Baking",
    "Ballet dancing",
    "Ballroom dancing",
    "Baton twirling[160]",
    'Beauty pageants',
    "Billiards[161]",
    "Book folding",
    "Bowling[162]",
    "Boxing[163]",
    "Cooking",
    "Bridge[164]",
    "Checkers (draughts)",
    "Cheerleading[165]",
    "Chess[166]",
    "Color guard[167]",
    "Cribbage",
    "Curling[168]",
    "Dancing[169]",
    "Darts[170]",
    "Debate[171]",
    "Dominoes",
    "Eating",
    "Esports",
    "Fencing[172]",
    "Figure Skating",
    "Go[173]",
    "Gymnastics[174]",
    "Ice hockey[175]",
    "Ice skating[176]",
    "Judo[177]",
    "Jujitsu",
    "Kabaddi[178]",
    "Knowledge/word games",
    "Laser tag[179]",
    "Magic",
    "Mahjong[180]",
    "Marbles[181]",
    "Martial arts[182]",
    "Model racing",
    "Model United Nations",
    "Pinball",
    "Poker",
    "Pole dancing",
    "Pool",
    'Radio-controlled model playing',
    "Role-playing games",
    "Rughooking",
    "Shogi",
    "Slot car racing[184]",
    "Speedcubing",
    "Sport stacking",
    "Table football[185]",
    "Table tennis[186]",
    "Volleyball[187]",
    "Video gaming",
    "VR Gaming",
    "Weightlifting[188]",
    "Wrestling"


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
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
                              Navigator.of(context).pop();
                            },
                            icon:  SvgPicture.asset("asset/arrow (2).svg")),
                        const Padding(
                          padding: EdgeInsets.only( left:  8),
                          child: Text("Competitive Hobbies InDoor",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: values.length,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return  Padding(padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(values[index], style: const TextStyle(color: Colors.grey,fontSize: 14),),
                          Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(30)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.99),
                                    blurRadius: 1.0,
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
                        ],
                      ),
                      const Divider(color: Colors.grey,)
                    ],
                  ),);
              },

            ),
          ],
        ),
      ),
    );
  }
}
