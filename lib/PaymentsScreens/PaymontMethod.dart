import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'CreditCard.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                //   return const profiledetailes();
                // }));
                //print("hello");
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
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Payment Method",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0
                  )
                ]
              ),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset("asset/card.svg"),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    )
                  ]
                  
                ),
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(

                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xffFFFFFF),),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
                  onPressed: () {
                    //
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return const CreditCardScreen();
                    }));

                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                      child: Text("Credit Card",style: TextStyle(color: Colors.black),)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      )
                    ]

                ),
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(

                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xff000000),),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
                  onPressed: () {
                    //
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return const CreditCardScreen();
                    }));

                  },
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Credit Card",style: TextStyle(color: Colors.white),)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
