import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OutDoorAndSports extends StatefulWidget {
  const OutDoorAndSports({Key? key}) : super(key: key);

  @override
  State<OutDoorAndSports> createState() => _OutDoorAndSportsState();
}

class _OutDoorAndSportsState extends State<OutDoorAndSports> {
  List values = [
  "Air sports",
   "Airsoft",
   "Amateur geology",
   "Amusement park visiting",
   "Archery",
   "Auto detailing",
  "Automobilism",
   "Astronomy[67]",
   "Backpacking",
   "Badminton",
   "BASE jumping[68]",
   "Baseball[69]",
   "Basketball[70]",
  "Beachcombing",
  "Beekeeping[71]",
   "Birdwatching[72]",
   "Blacksmithing",
  "BMX[73]",
  "Board sports[74]",
   "Bodybuilding[75]",
   "Bus riding",
  " Camping",
  " Canoeing",
   " Canyoning",
  " Carrier pigeons",
    "Car riding",
  "Car tuning"
   "Caving",
   "City tri,p",
 "eball",
  "Dog training",
   "Dog walking",
   "Dowsing[76]",
   "Driving[77]",
  "Farming",
   "Fishing[78]",
   "Flag football[79]",
  " Flower growing",
   "Flying[80]",
   "Flying disc",
  "Flying model planes",
   "Foraging[81]",
   "Fossicking",
   "Freestyle football[82]",
   "Fruit picking",
   "Gardening[83]",
   "Geocaching[84]"
   "Ghost hunting[8,5]"
   "Gold prospecting",
  " Graffiti[86]",
   "Groundhopping",
   "Guerrilla gardening",
   "Gymnastics",
   "Handball[87]"
   "Herbalism",
   "Herping",
   "High-power rocketry"
   "Hiking[88]",
   "Hobby horsing",
   "Hobby tunneling",
   "Hooping[89]",
   "Horseback ri,ding"
   "Hunting[90]",
   "Inline skating[91]",
   "Jogging[92]"
   "Jumping rope",
   "Karting",
   "Kayaking[93]",
   "Kite flying[94]",
   "Kitesurfing[95]",
   "Lacrosse[96]",
   "LARPing[97]",
   "Letterboxing[98]",
   "Lomography",
   "Longboarding",
   "Martial arts",
   "Magnet fishing",
   "Metal detecting[99]"
   "Motorcycling",
   "Meteorology",
  "Motor sports[100]",
   "Mountain biking[101]",
  "Mountaineering[102]",
   "Museum visiting",
   "Mushroom hunting/mycology[103]",
   "Netball[104]",
   "Noodling",
  "Nordic ska,ting[105]",
  "Orienteering[106]",
   "Paintball[107]",
   "Paragliding",
   "Parkour[108]",
   "Photography[109]",
   "Pickleball",
   "Picnicking",
   "Podcast hos,ting",
   "Polo[110]",
    "Powerlifting",
   "Public transport riding",
   "Qigong",
   "Radio-c,ontrolled model playing",
   "Rafting[111]",
   "Railway journeys",
   "Railway modelling",
   "Rappelling[112]",
   "Renaissance fair",
   "Renovating",
   "Road biking",
   "Rock climbing[102]",
   "Rock painting",
   "Roller skating[,113]",
   "Roundnet",
   "Rugby[114]",
  "Running[92]",
   "Safari",
   "Sailing[115]",
   "Sand art[116]",
   "Scouting",
   "Scuba diving[117]",
   "Sculling or rowing[118]",
   "Shooting[119]",
   "Shopping[120]",
   "Shuffleboard",
   "Skateboarding[121]",
   "Skiing[122]",
   "Skimboarding[123]",
   "Skydiving[124]",
   "Slacklining[125]"
   "Sledding",
   "Snorkeling",
  "Snowboarding[122]",
  "Snowmobiling",
   "Snowshoeing",
   "Soccer",
   "Stone skipping[126]",
  "Storm chasing",
   "Sun bathing",
  "Surfing[127]",
   "Survivalism",
   "Swimming[128]",
   "Table tennis playing Taekwondo[129]",
   "Tai chi[130]",
   "Tennis",
   "Thru-hi,king",
   "Topiary",
   "Tourism",
   "Trade fair visiting",
   "Travel",
   "Unicycling",
   "Urban exploration[131]",
   "Vacation",
   "Vegetable farming",
   "Vehicle restoration[132]",
   "Videography",
  "Volleyball",
   "Volunteering",
   "Walking",
   "Water sports[133]",
   "Zoo visiting",
  ];

  bool vaboxvaluelue = true;
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
               width: MediaQuery.of(context).size.width /1.7,
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
                          child: Text("Outdoors and Sports",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
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
                          Text(values[index], style: TextStyle(color: Colors.grey,fontSize: 14),),
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
