import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ProfileScreen/ProfileScreen.dart';
import '../Screens/HomeScreen.dart';

class letsdo extends StatefulWidget {
  const letsdo({Key? key}) : super(key: key);

  @override
  State<letsdo> createState() => _letsdoState();
}

class _letsdoState extends State<letsdo> {
  bool checkedApp = false;
  bool checkedPersonal = false;

  List images = [
    "one.jpg",
    "two.jpeg",
    "three.jpg",
    "four.jpg",
    "five.jpeg",
    "six.jpg",
    "seven.png",
    "nine.jpeg",
    "ten.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0
                )
              ]

            ),
            height: MediaQuery.of(context).size.height /2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: ((MediaQuery.of(context).size.width / 3)  / 200),
                      crossAxisCount: 3),
                  itemCount: 9,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        decoration: BoxDecoration(
                            image:  DecorationImage(
                                image: AssetImage(
                                  "asset/" + images[index],
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),

                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Having trouble connecting? We’ve noticed that your inbox is awfully low,try chatting with these users experiencing the same results in your area.",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              // SizedBox(
              //   height: 8,
              // ),
              // Text(
              //   "in finding your",
              //   style: TextStyle(fontSize: 30, color: Colors.grey),
              // ),
              // SizedBox(
              //   height: 8,
              // ),
              // Text(
              //   "connection?",
              //   style: TextStyle(
              //       fontSize: 30,
              //       color: Colors.red,
              //       fontWeight: FontWeight.bold),
              // )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                    width: 25,
                    height: 25,
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
                      value: checkedApp,
                      shape: RoundedRectangleBorder(
                          // Making around shape
                          borderRadius: BorderRadius.circular(30)),
                      onChanged: (bool? value) {
                        setState(() {
                          checkedApp = value!;
                        });
                      },
                    )),
                const SizedBox(
                  width: 10,
                ),
                Text("Appearance",
                    style: checkedApp == true
                        ? const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )
                        : const TextStyle(fontSize: 15, color: Colors.grey))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                    width: 25,
                    height: 25,
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
                      value: checkedPersonal,
                      shape: RoundedRectangleBorder(
                          // Making around shape
                          borderRadius: BorderRadius.circular(30)),
                      onChanged: (bool? value) {
                        setState(() {
                          checkedPersonal = value!;
                        });
                      },
                    )),
                const SizedBox(
                  width: 10,
                ),
                Text("Personality",
                    style: checkedPersonal == true
                        ? const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )
                        : const TextStyle(fontSize: 15, color: Colors.grey))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff1E202D),
                    ),
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40))))),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const HomeScreen();
                  }));
                },
                child: Row(
                  children: [
                    const Text(
                      "Let's Do This",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                        width: 35,
                        height: 20,
                        child: SvgPicture.asset("asset/arrow.svg"))
                  ],
                ),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: InkWell(
          //     onTap: () {
          //       // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          //       //   return const SignIn();
          //       // }));
          //     },
          //     child: Transform.translate(
          //       offset: const Offset(40, 0),
          //       child: SizedBox(
          //           height: 130,
          //           width: 130,
          //           child: SvgPicture.asset("asset/newbutton.svg",fit: BoxFit.fill,)),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
