import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditCardScreen extends StatelessWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

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
                          "Via Credit Card",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Image.asset(
                  "asset/Rectángulo redondeado 1-image.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Card Holder",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15),
                        hintText: "Name",
                        prefixIcon: SvgPicture.asset("asset/holder.svg",
                            fit: BoxFit.scaleDown)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Card Number",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 15),
                        hintText: "Number",
                        prefixIcon: SvgPicture.asset(
                          "asset/ticket.svg",
                          fit: BoxFit.scaleDown,
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Expiry Date",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(top: 15),
                                hintText: "Date",
                                prefixIcon: SvgPicture.asset(
                                  "asset/expiry.svg",
                                  fit: BoxFit.scaleDown,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "CCV",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(top: 15),
                                hintText: " 0 0 0",
                                prefixIcon: SvgPicture.asset(
                                  "asset/lock.svg",
                                  fit: BoxFit.scaleDown,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                          hintText: "Enter Discount Code"),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 150,
                height: 38,
                child: ElevatedButton(

                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xff1E202D),),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
                  onPressed: () {
                    //
                    // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    //   return const myEnneagramPage();
                    // }));

                  },
                  child: const Text("Pay Now"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
