import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Forgotpasword/forgetpassword.dart';
import '../Signup/SignUp.dart';
import '../StartUpProfileScreens/profile detail.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffed5959),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0,left: 30,right: 30),
              child: Center(
                child: SvgPicture.asset("asset/signin.svg"),
              ),
            ),
            const Center(
              child: Text(
                "Sign in",
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
                    hintText: "Email/Phone Number"),
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

                    hintStyle: TextStyle(color: Colors.white, fontSize: 12 ),
                    hintText: "Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                          return const forgetpass();
                        }));
                      },
                      child: const Text(
                        "Forgot password",
                        style: TextStyle(color: Colors.white, fontSize: 9,fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
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

                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return const profiledetailes();
                    }));

                  },
                  child: const Text("Sign in"),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return const signUp();
                  }));
                },
                child: const Text(" Don't have an Account? Sign Up ",style: TextStyle(color: Colors.white ,fontSize: 10 ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
