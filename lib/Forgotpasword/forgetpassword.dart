import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/services.dart';
import 'package:threeoverapp/Forgotpasword/resetPas.dart';

class forgetpass extends StatefulWidget {
  const forgetpass({super.key});

  // forgetpass({Key? key}) : super(key: key);

  @override
  State<forgetpass> createState() => _forgetpassState();
}

class _forgetpassState extends State<forgetpass> {
  FocusNode one = FocusNode();
  FocusNode two = FocusNode();
  FocusNode three = FocusNode();
  FocusNode four = FocusNode();
  String country = "+92";
  bool numberCheck = false;

  final countryPicker = const FlCountryCodePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xffed5959),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Forget Password",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Enter phone number used for account or email",
                          style: TextStyle(color: Colors.white, fontSize: 9),
                        ),
                        Text(
                          "used to set up 3overthree account please.",
                          style: TextStyle(color: Colors.white, fontSize: 9),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
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
                        value: numberCheck,
                        shape: RoundedRectangleBorder(
                            // Making around shape
                            borderRadius: BorderRadius.circular(30)),
                        onChanged: (bool? value) {
                          setState(() {
                            numberCheck = value!;
                          });
                        },
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 80,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: GestureDetector(
                      onTap: () async {
                        final code =
                            await countryPicker.showPicker(context: context);
                        if (code != null) {
                          setState(() {
                            country = code.dialCode;
                          });
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              child: Text(country,
                                  style: const TextStyle(color: Colors.black)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Transform.rotate(
                                angle: 270 * math.pi / 180,
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 15,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "123 456 576",
                        hintStyle: TextStyle(color: Colors.white)),
                  ))
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
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
                        value: numberCheck,
                        shape: RoundedRectangleBorder(
                            // Making around shape
                            borderRadius: BorderRadius.circular(30)),
                        onChanged: (bool? value) {
                          setState(() {
                            numberCheck = value!;
                          });
                        },
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "123 456 576",
                        hintStyle: TextStyle(color: Colors.white)),
                  ))
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
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
                    onPressed: () {},
                    child: const Text("Submit"),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: MediaQuery.of(context).size.height /2,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "OPT Verification",
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "please enter 4 digits code ",
                              style: TextStyle(color: Colors.black38),
                            ),
                            Text(
                              "sent to your number",
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 80,
                            width: 60,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 5.0, color: Colors.grey)
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                              child: TextField(
                                focusNode: one,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 30),
                                textInputAction: TextInputAction.next,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20),
                                    border: InputBorder.none),
                                onSubmitted: (value) {
                                  FocusScope.of(context).requestFocus(two);
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 60,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 5.0, color: Colors.grey)
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                              child: TextField(
                                onSubmitted: (value) {
                                  FocusScope.of(context).requestFocus(three);
                                },
                                focusNode: two,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 30),
                                textInputAction: TextInputAction.next,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 60,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 5.0, color: Colors.grey)
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                              child: TextField(
                                onSubmitted: (value) {
                                  FocusScope.of(context).requestFocus(four);
                                },
                                focusNode: three,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 30),
                                textInputAction: TextInputAction.next,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 60,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 5.0, color: Colors.grey)
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                              child: TextField(
                                focusNode: four,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 30),
                                textInputAction: TextInputAction.next,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 35,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff1E202D),
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)))),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const resetpass();
                              }));
                            },
                            child: const Text("Next"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
