import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GeneralHobbies extends StatefulWidget {
  const GeneralHobbies({Key? key}) : super(key: key);

  @override
  State<GeneralHobbies> createState() => _GeneralHobbiesState();
}

class _GeneralHobbiesState extends State<GeneralHobbies> {

  bool vaboxvaluelue= false;
  List string = [
  "3D printing",
  "Acroyoga",
  "Acting",
  "Amateur Radio",
  "Animation",
   "Anime",
   "Aqua scaping",
  "Art",
   "Astrology",
  "Astronomy",
  "Baking",
  "Barbershop Music",
  "Bartending",
  "Baton twirling",
  "Beatboxing",
  "Beer tasting",
  "Bell ringing",
  "Binge watching",
  "Blacksmith",
  "Blogging",
  "Bonsai",
  "Board/tabletop games",
  "Book discussion clubs",
  "Book restoration",
  "Bowling",
  "Brazilian jiu-jitsu",
  "Breadmaking",
  "Building",
  "Bullet journaling",
  "Butchering",
  "Calligraphy",
  "Candle making",
  "Candy making",
  "Car spotting",
  "Car fixing & building",
  "Card games",
  "Cardistry",
    "Ceramics",
  "Chatting",
   "Cheesemaking",
   "Chess",
  "Cleaning",
   "Clothes making",
   "Coffee roasting",
   "Collecting",
   "Coloring[9]",
   "Communication",
  "Community activism",
   "Computer programming",
   "Confectionery",
   "Conlanging",
   "Construction",
   "Cooking",
   "Cosplaying",
   "Couponing",
   "Craft",
  "Creative writing",
   "Crocheting",
   "Cross-stitch",
   "Crossword puzzles",
  "Cryptography[15]",
  "Cue sports",
   "Dance[16]",
   "Decorating",
"Decorative birds",
   "Digital arts[17]",
   "Dining",
   "Diorama",
   "Distro Hopping",
   "Diving",
  "Djembe",
   "DJing",
   "Drama",
   "Drawing",
  "Editing",
   "Electronic games",
   "Electronics",
   "Embroidery",
   "Engraving",
   "Entertaining",
   "Everyday carry",
   "Experimenting",
   "Fantasy sports",
  "Fashion",
  "Fashion design",
  "Feng shui decorating",
   "Filmmaking",
   "Fingerpainting",
   "Fish farming",
   "Fishkeeping",
   "Flower arranging",
   "Fly tying",
   "Foreign language learning",
   "Furniture building",
   "Genealogy",
   "Gingerbread house making",
   "Giving advice",
   "Glassblowing",
  "Gardening",
  "Gongfu tea",
  "Graphic design",
   "Gunsmithing",
   "Hacking",
   "Hairstyle",
   "Hardware",
   "Herp keeping",
   "Home improvement",
   "Homebrewing",
  "Homing pigeons",
   "Houseplant care",
   "Hula hooping",
   "Hydroponics",
   "Ice skating",
   "Inventing",
   "Jewelry making",
   "Jigsaw puzzles",
   "Journaling",
   "Judo",
   "Juggling",
   "Karaoke",
   "Karate",
   "Kendama",
   "Knife making",
   "Knitting",
   "Knot tying",
   "Kombucha brewing",
   "Kung fu",
   "Lace making",
   "Lapidary",
   "Leather crafting",
   "Lego building",
   "Livestreaming",
   "Listening to music",
   "Listening to podcasts",
   "Lock picking",
   "Machining",
   "Macrame",
   "Magic",
   "Makeup",
   "Manga",
  "Massaging",
   "Mazes (indoor/outdoor)",
   "Mechanics",
   "Meditation",
  "Memory training",
  "Metalworking",
   "Miniature art",
   "Minimalism",
   "Model building",
  "Modeling",
  "Model engineering",
   "Music",
   "Nail art",
   "Needlepoint",
   "Origami[44]",
   "Painting[45]",
   "Pen Spinning",
   "Performance",
   "Pet sitting",
   "Philately",
   "Photography",
   "Pilates",
   "Pipes",
   "Piracy",
   "Planning",
   "Plastic art",
   "Playing musical instruments",
   "Poetry",
   "Poi",
   "Pole dancing",
   "Post crossing",
   "Pottery",
   "Practical jokes",
   "Pressed flower craft",
   "Proofreading and editing",
   "Proverbs",
   "Public speaking",
   "Puppetry",
   "Puzzles",
   "Pyrography",
   "Quilling",
   "Quilting",
   "Quizzes",
   "Radio-controlled model playing",
   "Rail transport modeling",
   "Rapping",
   "Reading",
   "Recipe creation",
   "Refinishing",
  "Reiki",
   "Reviewing Gadgets",
   "Robot combat",
   "Rubik's Cube",
   "Scrapbooking",
   "Scuba Diving",
   "Sculpting",
   "Sewing",
   "Shitposting",
   "Shoemaking",
   "Singing",
   "Sketching",
   "Skipping rope",
   "Slot car",
   "Soapmaking",
   "Social media",
   "Speed running",
   "Spreadsheets",
   "Stamp collecting",
   "Stand-up comedy",
   "Storytelling",
  "Stretching",
   "String Figures",
   "Stripping",
   "Sudoku",
   "Talking",
   "Taekwondo",
   "Tapestry",
    "Tarot",
   'Tattooing',
   "Taxidermy",
   "Telling jokes",
   "Thrifting",
   "Upcycling",
   "Video editing",
  "Video game developing",
   "Video gaming[57]",
    "Video making",
  "VR Gaming",
   "Wargaming",
   "Watch making",
   "Watching documentaries",
  "Watching movies",
   "Watching television",
   "Wax sealing",
   "Waxing",
   "Weaving",
   "Webtooning",
   "Weight training",
   "Welding",
   "Whittling",
   "Wikipedia editing",
   "Wine tasting",
   'Winemaking',
   "Witchcraft",
   "Wood carving",
   "Woodworking",
   "Word searches",
   "Worldbuilding",
   "Wikipedia racing/Wikiracing",
   "Writing",
   "Writing music",
   "Yo-yoing",
   "Yoga",
   "Zumba"
  ];
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
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 45,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 2.0)
                    ],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon:  SvgPicture.asset("asset/arrow (2).svg")),
                        const Padding(
                          padding: EdgeInsets.only(top: 15, left:  8),
                          child: Text("General Hobbies",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),

            ListView.builder(
            itemCount: string.length,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
            return  Padding(padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(string[index], style: TextStyle(color: Colors.grey,fontSize: 14),),
                    Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.99),
                              blurRadius: 1.0,
                              offset: const Offset(0, 0.5),
                            ),
                          ],
                        ),
                        child: Checkbox(
                          checkColor: Colors.green,
                          fillColor: MaterialStateProperty.all(Colors.white),
                          value: vaboxvaluelue,
                          shape: RoundedRectangleBorder(
                            // Making around shape
                              borderRadius: BorderRadius.circular(30)),
                          onChanged: (bool? value) {
                            setState(() {
                              vaboxvaluelue = value!;
                            });
                          },
                        )),
                  ],
                ),
                const Divider(color: Colors.grey,)
              ],
            ),);
              },

              ),

          ],


        ),
      ),
    );
  }
}
