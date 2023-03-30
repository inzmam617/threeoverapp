import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InDoorHobbies extends StatefulWidget {
  const InDoorHobbies({Key? key}) : super(key: key);

  @override
  State<InDoorHobbies> createState() => _InDoorHobbiesState();
}

class _InDoorHobbiesState extends State<InDoorHobbies> {
  bool vaboxvaluelue = false;
  List values = [
    "Action figure",
    "Antiquing[134]",
    "Ant-keeping",
    "Art collecting[135]",
    "Book collecting[136]",
    "Button collecting",
    "Cartophily (card collecting)[137]",
    "Coin collecting[138]",
    "Comic book collecting[139]",
    "Compact discs",
    "Crystals",
    "Deltiology (postcard collecting)[140]",
    "Die-cast toy",
    "Digital hoarding",
    "Dolls",
    "Element collecting[141]",
    "Ephemera collecting",
    "Films",
    "Fingerprint collecting",
    "Fusilately (phonecard collecting)",
    "Knife collecting",
    "Lapel pin",
    "Lotology (lottery ticket collecting)",
    "Movie memorabilia collecting[142]",
    "Perfume",
    "Philately",
    "Phillumeny",
    "Radio-controlled model collecting",
    "Rail transport modelling",
    "Record collecting[143]",
    "Rock tumbling",
    "Scutelliphily",
    "Shoes",
    "Slot car",
    "Sports memorabilia",
    "Stamp collecting[144]",
    "Stuffed toy collecting",
    "Tea bag collecting",
    "Ticket collecting",
    "Transit map collecting",
    "Video game collecting[145]",
    "Vintage cars[146]",
    "Vintage clothing",
    "Vinyl Records"
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
                          child: Text("Collection Hobbies InDoor",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
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
