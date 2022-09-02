import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../WIdgets/footer.dart';
import 'BlogAppBar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(),
        body: Stack(children: [
          Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset("assets/images/blog_assets/pngwing.com.png",
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.8,
                    scale: 0.5),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text("About Me",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              letterSpacing: 1))),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                    "Hi, its Biloliddin. I'm a software engineer student at Final "
                    "International University. At first, thank you for "
                    "visiting my website and reading my personal blog. \n\n"
                    "Couple of facts about me: I'm from Uzbekistan and moved to "
                    "Cyprus in 2020 in order to do bachelors degree. I've been"
                    " interested in programming and technical world in general"
                    " since my 5-6th grade at school. And started learning "
                    "Python programming language at 9th grade. Since that I've"
                    " never stopped learning something new connected to "
                    "my profession. "
                    "\n\nThis summer, I began learning Flutter. At first, I began "
                    "learning just to finish a project that I was given. But then I realized how interesting and universal Flutter is. After getting involved in the process of learning, I decided to buy extra flutter related courses in order to upgrade my knowledge in this field.",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ))),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: const Divider(
                    thickness: 2,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Values and Mission",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              letterSpacing: 1))),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                    "I have always tried my best to create something new or"
                    " at least to do something totally new for me. My teachers used"
                    " to call me the most curious student in the class since I "
                    "used to ask too many questions at school."
                    "\n\n"
                    "I believe that by trying new technologies and methods I will "
                    "be able to be helpful for humanity. Of course, this might "
                    "sounds too much but I think everyone should try to make our "
                    "civilization better at least by supporting their family and friends.",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ))),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: const Divider(
                    thickness: 2,
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Watching",
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            letterSpacing: 1))),
              )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                    "Here is my personal list of TV series and movies that "
                    "I would recommend to my friends.",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            letterSpacing: 1))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(children: const [
                    ListTile(leading: MyBullet(), title: Text("Money Heist")),
                    ListTile(
                        leading: MyBullet(), title: Text("Silicon Valley")),
                    ListTile(
                        leading: MyBullet(), title: Text("13 Reasons Why")),
                    ListTile(leading: MyBullet(), title: Text("Stalk (2019)")),
                    ListTile(leading: MyBullet(), title: Text("Death Note")),
                    ListTile(leading: MyBullet(), title: Text("Akame ga Kill")),
                    ListTile(leading: MyBullet(), title: Text("Steins Gate")),
                    ListTile(
                        leading: MyBullet(),
                        title: Text(
                            "Sayonara no Asa ni Yakusoku no Hana wo Kazarou")),
                    ListTile(leading: MyBullet(), title: Text("Your Name")),
                    ListTile(leading: MyBullet(), title: Text("One Piece")),
                    ListTile(leading: MyBullet(), title: Text("Arcane")),
                  ]),
                ),
              ),
              const Footer(),
            ])),
          ),
        ]));
  }
}

class MyBullet extends StatelessWidget {
  const MyBullet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.01,
      width: MediaQuery.of(context).size.width * 0.01,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
