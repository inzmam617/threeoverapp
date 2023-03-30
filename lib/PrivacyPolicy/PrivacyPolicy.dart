import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TermsOfServices extends StatefulWidget {
  const TermsOfServices({Key? key}) : super(key: key);

  @override
  State<TermsOfServices> createState() => _TermsOfServicesState();
}

class _TermsOfServicesState extends State<TermsOfServices> {
  bool checkedApp = false;

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
              child: Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 3.0)
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
                              icon:
                                  SvgPicture.asset("asset/arrow (2).svg")),
                          const Padding(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "Terms of Services",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                          Text(
                            "Update 20-02-2022",
                            style:
                                TextStyle(fontSize: 8, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "3 - Terms and Conditions",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales provides a flexible latform to sell your products or services so that you can focus on.Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales provides a flexible latform to sell your produ",
                      style: TextStyle(color: Colors.red, fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "4 - Privacy Policy",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales provides a flexible latform to sell your products or services so that you can focus on.Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales provides a flexible latform to sell your produ Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales provides a flexible latform to sell your products or services",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "5 - Privacy Policy",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales provides a flexible latform to sell your products or services so that you can focus on.Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales provides a flexible latform to sell your produ Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales provides a flexible latform to sell your products or services",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              //width: MediaQuery.of(context).size.width,
              color: Colors.black12,
              // height: MediaQuery.of(context).size.height/3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black.withOpacity(0.99),
                              //     blurRadius: 1,
                              //     offset: const Offset(0, 0.5),
                              //   ),
                              // ],
                            ),
                            child: Checkbox(
                              checkColor: Colors.green,
                              fillColor:
                                  MaterialStateProperty.all(Colors.transparent),
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
                        Row(
                          children: [
                            Text(
                              "I agree with the",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            Text(
                              "Terms and Conditions",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black.withOpacity(0.99),
                              //     blurRadius: 1,
                              //     offset: const Offset(0, 0.5),
                              //   ),
                              // ],
                            ),
                            child: Checkbox(
                              checkColor: Colors.green,
                              fillColor:
                                  MaterialStateProperty.all(Colors.transparent),
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
                        Row(
                          children: const [
                            Text(
                              "I agree with the",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 40,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xffFF0000),
                              ),
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(40),
                                          bottomRight: Radius.circular(40))))),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //     MaterialPageRoute(builder: (BuildContext context) {
                            //       return const MainPage();
                            //     }));
                          },
                          child: const Center(
                            child: Text(
                              "Accept",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 40,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                  BorderSide(color: Colors.red)),
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xffD3D3D3),
                              ),
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(40),
                                          bottomRight: Radius.circular(40))))),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //     MaterialPageRoute(builder: (BuildContext context) {
                            //       return const MainPage();
                            //     }));
                          },
                          child: const Center(
                            child: Text(
                              "Decline",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
