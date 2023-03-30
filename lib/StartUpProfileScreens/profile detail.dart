import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'addingphotos.dart';

class profiledetailes extends StatefulWidget {
  const profiledetailes({Key? key}) : super(key: key);

  @override
  State<profiledetailes> createState() => _profiledetailesState();
}

final List<String> list = <String>['Gender', 'Male', 'Female'];
final List<String> countryList = <String>['Country', 'Pakistan', 'America'];

class _profiledetailesState extends State<profiledetailes> {
  String dropdownValue = list.first;
  String countryValue = countryList.first;
  String day = "Date";
  String date = "of";
  String year = "Brith";

  void showdatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime.now())
        .then((value) => {
              setState(() {
                day = value?.day.toString() ?? "";
                date = value?.month.toString() ?? "";
                year = value?.year.toString() ?? "";
              }),
              print("$day / $date / $year"),
            });
  }

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                //  alignment: Alignment.bottomCenter,
                  child: Align(
                   alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60),
                              bottomLeft: Radius.circular(60),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                offset: Offset(0.0, 0.75))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 30, right: 30, bottom: 20),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 15),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: "Email"),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 65,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: DropdownButton<String>(
                                      //icon: SizedBox.shrink(),
                                      value: dropdownValue,
                                      icon: const Icon(
                                        size: 25,
                                        Icons.keyboard_arrow_down,
                                        color: Colors.grey,
                                      ),
                                      elevation: 16,
                                      style:
                                          const TextStyle(color: Colors.grey),
                                      underline: Container(
                                        height: 1.5,
                                        color: Colors.black26,
                                      ),
                                      onChanged: (String? value) {
                                        // This is called when the user selects an item.
                                        setState(() {
                                          dropdownValue = value!;
                                        });
                                      },
                                      items: list
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                // top: 25
                                                ),
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            showdatepicker();
                                          },
                                          icon: const Icon(Icons.date_range)),
                                      contentPadding:
                                          const EdgeInsets.only(top: 25),
                                      hintStyle: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                      hintText: "$day $date $year",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: DropdownButton<String>(
                                //icon: SizedBox.shrink(),
                                value: countryValue,
                                icon: const Icon(
                                  size: 25,
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey,
                                ),
                                elevation: 16,
                                style: const TextStyle(color: Colors.grey),
                                underline: Container(
                                  height: 1.5,
                                  color: Colors.black26,
                                ),
                                onChanged: (String? value) {
                                  showCountryPicker(
                                    context: context,
                                    showPhoneCode: true,
                                    // optional. Shows phone code before the country name.
                                    onSelect: (Country country) {
                                      print(
                                          'Select country: ${country.displayName}');
                                    },
                                  );

                                  // This is called when the user selects an item.
                                  setState(() {
                                    countryValue = value!;
                                  });
                                },
                                items: countryList
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          // top: 25
                                          ),
                                      child: Text(value),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.grey,
                              offset: Offset(0.0, 0.75))
                        ]),

                    //height: MediaQuery.of(context).size.height / 2.5,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                            Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: const BoxDecoration(
                                  color: Color(0xffed5959),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Profile Details",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(children: [
                          Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25),
                                      bottomLeft: Radius.circular(25)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0, color: Colors.grey)
                                  ]),
                              height: 220,
                              width: MediaQuery.of(context).size.width / 2,
                              margin: const EdgeInsets.all(10),
                              child: const ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25)),
                                child: Image(
                                  image: AssetImage("asset/prof.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Column(
                            children: [
                              SizedBox(
                                height: 150,
                                width: 150,
                                child: Transform.translate(
                                  offset: const Offset(5, -40),
                                  child: SizedBox(
                                      //width: MediaQuery.of(context).size.width / 2,
                                      child:
                                          SvgPicture.asset("asset/circle.svg")),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(-10, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 5.0,
                                                color: Colors.grey)
                                          ],
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(20),
                                              bottomRight:
                                                  Radius.circular(20))),
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  2) -
                                              20,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 20, bottom: 12),
                                            border: InputBorder.none,
                                            hintText: "First Name",
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                            )),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5.0,
                                              color: Colors.grey)
                                        ],
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      width:
                                          (MediaQuery.of(context).size.width /
                                                  2) -
                                              20,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 20, bottom: 12),
                                            border: InputBorder.none,
                                            hintText: "Last Name",
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Center(
                child: SizedBox(
                  width: 200,
                  height: 35,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xff1E202D),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return const AddPhotos();
                      }));
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
