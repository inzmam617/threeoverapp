import 'package:flutter/material.dart';

class resetpass extends StatelessWidget {
  const resetpass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xffed5959),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Reset Pasword",
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
          const SizedBox(height: 10,),
          const Center(
            child: Text(
              "Enter your mobile or email associated with your account please.",
              style: TextStyle(color: Colors.white, fontSize: 9),
            ),
          ),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 12
                      ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20,bottom: 10),
                    hintText: "Enter Your Mobile Number"
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 12
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20,bottom: 10),
                      hintText: "Enter New Number"
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 12
                    ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20,bottom: 10),
                      hintText: "New Password"
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50,),
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
                //  Navigator.pushNamed(context, "resetpass");
                },
                child: const Text("Next"),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
