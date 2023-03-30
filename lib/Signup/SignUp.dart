import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:threeoverapp/SignIn/SignIn.dart';

class signUp extends StatelessWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffed5959),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            Padding(
              padding: const EdgeInsets.only(top: 0,left: 30,right: 30),
              child: SvgPicture.asset("asset/signUp.svg"),
            ),
            const Center(
              child: Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                    hintText: "Email"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(

                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.white
                  //   )
                  // ),

                    hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                    hintText: "Password"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(

                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.white
                  //   )
                  // ),

                    hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                    hintText: "Confrim Password"),
              ),
            ),
            const SizedBox(height: 25,),
            Center(
              child: SizedBox(
                width: 130,
                height: 35,
                child: ElevatedButton(

                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xff1E202D),),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
                  onPressed: () {

                  },
                  child: const Text("Sign up"),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SignIn();
                  }));
                },
                child: const Text("Already have an Account? Sign In ",style: TextStyle(color: Colors.white ,fontSize: 10 ),),
              ),
            )



          ],
        ),
      ),
    );
  }
}
