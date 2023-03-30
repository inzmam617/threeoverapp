import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EducationalHobbies extends StatefulWidget {
  const EducationalHobbies({Key? key}) : super(key: key);

  @override
  State<EducationalHobbies> createState() => _EducationalHobbiesState();
}

class _EducationalHobbiesState extends State<EducationalHobbies> {
  bool vaboxvaluelue = false;
  List values = [
    "Archaeology",
    "Astronomy",
    "Animation",
    "Aerospace",
    "Biology",
    "Botany",
    "Business",
    "Chemistry",
    "Entrepreneurship",
    "Geography",
    "History",
    "Linguistics",
    "Literature",
    "Mathematics",
    "Medical science",
    "Microbiology",
    "Mycology",
    "Neuroscience",
    "Philosophy",
    "Physics",
    "Psychology",
    "Railway studies",
   "Research",
    "Science and technology studies",
    "Social studies",
    "Sociology",
    "Sports science",
    "Story writing",
    "Life science",
   "Teaching",
    "Web design",
    "Wikipedia editing",
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
                          child: Text("Educational Hobbies",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
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
