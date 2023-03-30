import 'dart:math';
import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threeoverapp/PaymentsScreens/PaymontMethod.dart';

import '../MapView/MapView.dart';
import '../PrivacyPolicy/PrivacyPolicy.dart';
import '../Screens/Reviews.dart';
import '../Screens/supportForumPage.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.redAccent, blurRadius: 0.5)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage("asset/prof.jpg"),
                        radius: 35.0,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Sophia Lily",
                        style: TextStyle(color: Colors.black54, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    color: Color(0xfff0f0f0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 2.0)
                    ]),
                child: IconButton(
                  icon: SvgPicture.asset(
                    "asset/tab.svg",
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Scaffold.of(context).openDrawer();
                    //  scaffoldKey.currentState!.openEndDrawer();
                  },
                )),
          ],
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 25,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  return const supportForumPage();
                }));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "asset/support.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Support Form",
                    style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 25,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  return const reviewsPage();
                }));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "asset/reviews.svg",
                    height: 20,
                    width: 20,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "My Reviews",
                    style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 25,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  return const PaymentScreen();
                }));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.payment_outlined,color: Colors.grey,size: 15,),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "My Payments",
                    style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 30,
      ),

      // ConfigurableExpansionTile(
      //   topBorderOn: false,
      //   bottomBorderOn: false,
      //   //headerExpanded: Flexible(child: Center(child: Text("A Header Changed"))),
      //   header: const Center(child: Text("A Header")),
      //   childrenBody: Row(
      //     children: <Widget>[Text("CHILD 1")],
      //   ),
      // ),
       ExpansionTile(

         collapsedBackgroundColor: Colors.white,
         title: const Text("Legal Info",style: TextStyle(fontSize: 10),),iconColor: Colors.red,
         leading: SvgPicture.asset(
           "asset/settings.svg",
           height: 15,
           width: 15,
           fit: BoxFit.cover,
         ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 25,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    print("object");
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "asset/disclaimer.svg",
                        height: 15,
                        width: 15,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Dislclaimer",
                        style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 25,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return const TermsOfServices();
                    }));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "asset/privacy.svg",
                        height: 15,
                        width: 15,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Privacy policy",
                        style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 25,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {

                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "asset/terms.svg",
                        height: 15,
                        width: 15,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Terms and Conditions",
                        style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      const SizedBox(
        height: 30,
      ),
      // Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 5),
      //   child: Container(
      //     height: 25,
      //     decoration: const BoxDecoration(
      //         color: Colors.white,
      //         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 20),
      //       child: InkWell(
      //         onTap: () {
      //           print("object");
      //         },
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Row(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 SvgPicture.asset(
      //                   "asset/settings.svg",
      //                   height: 15,
      //                   width: 15,
      //                   fit: BoxFit.cover,
      //                 ),
      //                 const SizedBox(
      //                   width: 10,
      //                 ),
      //                 const Text(
      //                   "Owner Settings",
      //                   style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
      //                 ),
      //               ],
      //             ),
      //             // Padding(
      //             //   padding: const EdgeInsets.only(right: 10,bottom: 5),
      //             //   child: Transform.rotate(
      //             //       angle: 90 * pi / -180,
      //             //       child: const Icon(
      //             //         Icons.arrow_back_ios,
      //             //         color: Colors.red,
      //             //         size: 15,
      //             //       )),
      //             // )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 25,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                print("object");
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "asset/Break.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Take a Break & Hibernate",
                    style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 25,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                print("object");
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "asset/delete.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Delete account",
                    style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 25,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                print("object");
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "asset/how.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "How to use the app?",
                    style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 25,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                print("object");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "asset/notification.svg",
                        height: 15,
                        width: 15,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Notification",
                        style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                      ),
                    ],
                  ),
                  Transform.scale(
                    scale: 0.6,
                    child: Switch(
                        inactiveThumbColor: Colors.grey,
                        activeColor: Colors.red,
                        value: value,
                        onChanged: (check) {
                          setState(() {
                            value = check;
                            print(value);
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 25,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                print("object");
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "asset/email.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Contact Us",
                    style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      const Spacer(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 25,
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2.0)]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {

              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "asset/signout.svg",
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Sign Out",
                    style: TextStyle(fontFamily: 'Gilroy', fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      )
    ]);
  }
}
