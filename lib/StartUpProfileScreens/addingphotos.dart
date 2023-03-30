import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:threeoverapp/StartUpProfileScreens/profile%20detail.dart';

import 'letsdothis.dart';

class AddPhotos extends StatefulWidget {
  const AddPhotos({Key? key}) : super(key: key);

  @override
  State<AddPhotos> createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
 // File? imageone;
 // File? imagetwo;
 // File? imagethree;
 //  void pickiamge(File? orimage) {
 //    showModalBottomSheet<void>(
 //      context: context,
 //      builder: (BuildContext context) {
 //        return SizedBox(
 //          height: MediaQuery.of(context).size.height /4.5,
 //          child: ListView(
 //            children: [
 //              ListTile(
 //                leading: const Icon(Icons.file_copy),
 //                title: const Text("PICK IMAGE FROM GALLERY"),
 //                onTap: () async {
 //
 //                  var image = await ImagePicker().pickImage(source: ImageSource.gallery);
 //                   if(image == null) {
 //                     return;
 //                   } else {
 //                     final imagetemp = File(image.path);
 //                     setState(() {
 //                       orimage = imagetemp;
 //                       print(image.path);
 //                     });
 //
 //
 //                   }
 //                  print("Gallery");
 //                },
 //              ),
 //              ListTile(
 //                leading: const Icon(Icons.camera_alt),
 //                title: const Text("Pick IMAGE FORM CAMERA"),
 //                onTap: () async {
 //
 //                  final image = await ImagePicker().pickImage(source: ImageSource.camera);
 //                  if(image == null) {
 //                    return;
 //                  } else {
 //                    final imagetemp = File(image.path);
 //                    setState(() {
 //                      orimage = imagetemp;
 //                    });
 //
 //                    print(image.path);
 //                  }
 //                  print("Gallery");
 //                },
 //              )
 //            ],
 //          ),
 //        );
 //      },
 //    );
 //  }

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
                Navigator.of(context).pop();
                //print("hello");
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
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add Photos",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Add 3 Full body pictures",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.grey,
                      offset: Offset(0.0, 0.75))
                ]),

            //height: MediaQuery.of(context).size.height / 2.5,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // imageone != null ?
                  // SizedBox(
                  //   height: 200,
                  //   width: 110,
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(35),
                  //     child: Image.file(imageone!,fit: BoxFit.cover,),
                  //   ),
                  // )
                  //     :
                  Container(
                    height: 100,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(180)),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5.0, color: Colors.white)
                        ]),
                    child: IconButton(
                      onPressed: () {
                        //pickiamge(imageone);
                        // showModalBottomSheet<void>(
                        //   context: context,
                        //   builder: (BuildContext context) {
                        //     return SizedBox(
                        //       height: MediaQuery.of(context).size.height /4.5,
                        //       child: ListView(
                        //         children: [
                        //           ListTile(
                        //             leading: const Icon(Icons.file_copy),
                        //             title: const Text("PICK IMAGE FROM GALLERY"),
                        //             onTap: () async {
                        //
                        //               final image = await ImagePicker().pickImage(source: ImageSource.gallery);
                        //               if(image == null) {
                        //                 return;
                        //               } else {
                        //                 final imagetemp = File(image.path);
                        //                 setState(() {
                        //                   imageone = imagetemp;
                        //                 });
                        //
                        //                 print(image.path);
                        //               }
                        //               print("Gallery");
                        //               Navigator.pop(context);
                        //             },
                        //           ),
                        //           ListTile(
                        //             leading: const Icon(Icons.camera_alt),
                        //             title: const Text("Pick IMAGE FORM CAMERA"),
                        //             onTap: () async {
                        //
                        //               final image = await ImagePicker().pickImage(source: ImageSource.camera);
                        //               if(image == null) {
                        //                 return;
                        //               } else {
                        //                 final imagetemp = File(image.path);
                        //                 setState(() {
                        //                   imageone = imagetemp;
                        //                 });
                        //
                        //                 print(image.path);
                        //               }
                        //               print("Gallery");
                        //               Navigator.pop(context);
                        //             },
                        //           )
                        //         ],
                        //       ),
                        //     );
                        //   },
                        //);
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                  // imagetwo != null ?  SizedBox(
                  //   height: 200,
                  //   width: 110,
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(35),
                  //     child: Image.file(imagetwo!,fit: BoxFit.cover,),
                  //   ),
                  // ):
                  Container(
                    height: 100,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius:
                        const BorderRadius.all(Radius.circular(180)),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5.0, color: Colors.white)
                        ]),
                    child: IconButton(
                      onPressed: () {
                        // showModalBottomSheet<void>(
                        //   context: context,
                        //   builder: (BuildContext context) {
                        //     return SizedBox(
                        //       height: MediaQuery.of(context).size.height /4.5,
                        //       child: ListView(
                        //         children: [
                        //           ListTile(
                        //             leading: const Icon(Icons.file_copy),
                        //             title: const Text("PICK IMAGE FROM GALLERY"),
                        //             onTap: () async {
                        //
                        //               final image = await ImagePicker().pickImage(source: ImageSource.gallery);
                        //               if(image == null) {
                        //                 return;
                        //               } else {
                        //                 final imagetemp = File(image.path);
                        //                 setState(() {
                        //                   imagetwo = imagetemp;
                        //                 });
                        //
                        //                 print(image.path);
                        //               }
                        //               print("Gallery");
                        //               Navigator.pop(context);
                        //             },
                        //           ),
                        //           ListTile(
                        //             leading: const Icon(Icons.camera_alt),
                        //             title: const Text("Pick IMAGE FORM CAMERA"),
                        //             onTap: () async {
                        //
                        //               final image = await ImagePicker().pickImage(source: ImageSource.camera);
                        //               if(image == null) {
                        //                 return;
                        //               } else {
                        //                 final imagetemp = File(image.path);
                        //                 setState(() {
                        //                   imagetwo = imagetemp;
                        //                 });
                        //
                        //                 print(image.path);
                        //               }
                        //               print("Gallery");
                        //               Navigator.pop(context);
                        //             },
                        //           )
                        //         ],
                        //       ),
                        //     );
                        //   },
                        // );
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                  // imagethree != null ?  SizedBox(
                  //   height: 200,
                  //   width: 110,
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(35),
                  //     child: Image.file(imagethree!,fit: BoxFit.cover,),
                  //   ),
                  // ):
                  Container(
                    height: 100,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius:
                        const BorderRadius.all(Radius.circular(180)),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5.0, color: Colors.white)
                        ]),
                    child: IconButton(
                      onPressed: () {
                        // showModalBottomSheet<void>(
                        //   context: context,
                        //   builder: (BuildContext context) {
                        //     return SizedBox(
                        //       height: MediaQuery.of(context).size.height /4.5,
                        //       child: ListView(
                        //         children: [
                        //           ListTile(
                        //             leading: const Icon(Icons.file_copy),
                        //             title: const Text("PICK IMAGE FROM GALLERY"),
                        //             onTap: () async {
                        //
                        //               final image = await ImagePicker().pickImage(source: ImageSource.gallery);
                        //               if(image == null) {
                        //                 return;
                        //               } else {
                        //                 final imagetemp = File(image.path);
                        //                 setState(() {
                        //                   imagethree = imagetemp;
                        //                 });
                        //
                        //                 print(image.path);
                        //               }
                        //               print("Gallery");
                        //               Navigator.pop(context);
                        //             },
                        //           ),
                        //           ListTile(
                        //             leading: const Icon(Icons.camera_alt),
                        //             title: const Text("Pick IMAGE FORM CAMERA"),
                        //             onTap: ()  async {
                        //               final image = await ImagePicker().pickImage(source: ImageSource.camera);
                        //               if(image == null) {
                        //                 return;
                        //               } else {
                        //                 final imagetemp = File(image.path);
                        //                 setState(() {
                        //                   imagethree = imagetemp;
                        //                 });
                        //                 print(image.path);
                        //                 Navigator.pop(context);
                        //               }
                        //               print("Gallery");
                        //             },
                        //           )
                        //         ],
                        //       ),
                        //     );
                        //   },
                        // );
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 100,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Center(
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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return   const letsdo();
                    }));
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
