import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../SignIn/SignIn.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffed5959),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0,left: 30,right: 30),
            child: Center(
              child: SvgPicture.asset("asset/Group 6173.svg"),
            ),
          ),
          const SizedBox(height: 20,),
          const Text(
            "Focus",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 38),
          ),

          const Text(
            "On Your Moments",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 35),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Text to Fill provides a flexible platform to sell your \n products or servies so that you can focus on your",
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff1E202D),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 10,
                  width: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return const SignIn();
                    }));
                  },
                  child: Transform.translate(
                    offset: const Offset(40, 0),
                    child: SizedBox(
                        height: 130,
                        width: 130,
                        child: SvgPicture.asset("asset/button.svg")),
                  ),
                )
                // SizedBox(
                //   width: 100,
                //     height: 130, child: SvgPicture.asset("asset/button.svg"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
