import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50),
            ),
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50),
              )),
              child: Center(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Color(0xffEC5958),
                        // borderRadius: BorderRadius.only(
                        //   topRight: Radius.circular(50),
                        //   bottomRight: Radius.circular(50),
                        // )
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("asset/mountain.svg"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset("asset/camera.svg"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset("asset/phone.svg"),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Colors.black,
                                      )
                                    ],
                                    color: Color(0xffEC5958),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Center(
                                    child: SvgPicture.asset("asset/send.svg")),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 10),
                            hintText: "Type something..."),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 3.0)
                          ],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(55),
                              bottomRight: Radius.circular(55))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: SvgPicture.asset("asset/arrow (2).svg")),
                          const Text(
                            "Messages",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 5.0)
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                        "asset/notification-svgrepo-com.svg")),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40))),
                              height: 200,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Grace has reported you as ghosting",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    ),
                                    const Padding(padding: EdgeInsets.symmetric(horizontal: 20)
                                        ,child: Text("Lorem Ipsum Lorm Ipsim Liskt ipsumn tesxt jki jusk joot yay mm",style: TextStyle(color: Colors.grey),),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(

                                        padding: const EdgeInsets.symmetric(horizontal: 50),
                                        child: SizedBox(
                                          width: MediaQuery.of(context).size.width,
                                          height: 35,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.cyan),
                                                shape: MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                40)))),
                                            child: const Text('Back to messages',style: TextStyle(fontSize: 15),),
                                            onPressed: () => Navigator.pop(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("asset/prof.jpg"),
                        radius: 30.0,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Jacob Marley",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Jacob786@gmail.com",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                        width: MediaQuery.of(context).size.width / 3.5,
                      ),
                    ),
                    const Text(
                      "29 November 2022",
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                        width: MediaQuery.of(context).size.width / 3.5,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("asset/prof.jpg"),
                                  radius: 20.0,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0xffE2E2E2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                            "Text to Fill provides a flexible platform to sell in \n your  products or services th",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            )),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0xff20B9FC),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                            "Text to Fill provides a flexible platform to sell in \n your products or services th",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            )),
                                      ),
                                    ),
                                  )),
                              const Align(
                                alignment: Alignment.topRight,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("asset/prof.jpg"),
                                  radius: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
