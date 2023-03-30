import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ObservationHobbiesOutDoor extends StatefulWidget {
  const ObservationHobbiesOutDoor({Key? key}) : super(key: key);

  @override
  State<ObservationHobbiesOutDoor> createState() => _ObservationHobbiesOutDoorState();
}

class _ObservationHobbiesOutDoorState extends State<ObservationHobbiesOutDoor> {
  bool vaboxvaluelue = false;
  List values = [
   "Aircraft spotting[222]",
   "Amateur astronomy[67]",
   "Benchmarking",
   "Birdwatching[72]",
   "Bus spotting[223]",
   "Butterfly watching",
   "Geocaching[84]",
   "Gongoozling[224]",
   "Herping[225]",
   "Hiking/backpacking",
   "Meteorology[226]",
   "People-watching",
   "Photography",
   "Satellite watching",
   "Trainspotting[227]",
   "Whale watchin"
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
                          child: Text("Observation Hobbies OutDoor",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
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
