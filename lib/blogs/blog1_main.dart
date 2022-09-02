import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/blogs/screens/BlogAppBar.dart';

import '../WIdgets/footer.dart';

void main() {
  runApp(const Blog1Main());
}

class Blog1Main extends StatelessWidget {
  const Blog1Main({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Day 1',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      home: const blog1(),
    );
  }
}

class blog1 extends StatelessWidget {
  const blog1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/images/blog_assets/blog11.jpg",
                  height: MediaQuery.of(context).size.height * 0.80,
                  width: MediaQuery.of(context).size.width * 0.80,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Center(
                  child: Text("First day of the Internship",
                      style: GoogleFonts.dmSerifText(
                          textStyle: const TextStyle(
                              fontSize: 53.7,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              letterSpacing: 0.53))),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                    "My first day of the internship has begun with learning "
                    "about what is a Flutter in general. It was my first "
                    "day of web development at all, cause before I was "
                    "interested in algorithms, so my favourite language "
                    "used to be Python.",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 21.6,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 0,
                        height: 1.8,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                        "I've stopped practicing Python not because it became "
                        "being my favorite language, but because I had to "
                        "switch to another language in order to write a "
                        "responsive web app. The company where I was doing "
                        "internship, required to learn Flutter (which is "
                        "totally new to me). So I decided to begin my "
                        "journey from basic lessons on Youtube. I've just "
                        "opened the Youtube and searched 'Flutter for "
                        "beginner' and finished couple of short videos"
                        " and got bored.",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 0,
                              height: 1.8),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Image.asset(
                  "assets/images/blog_assets/blog12.jpg",
                  height: MediaQuery.of(context).size.height * 0.85,
                  width: MediaQuery.of(context).size.width * 0.90,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                    "Then I decided to motivate myself by watching about "
                    "Flutter's capabilities. After learning this I got some "
                    "inspiration to create and study. After that I just "
                    "began looking for Flutter courses just for web "
                    "development. However I couldn't find nothing besides "
                    "one udemy course. So, I've planed to buy that course "
                    "but then realized that I don't have money on my card. "
                    "I could go outside and charge my card, but since I am "
                    "lazy, I decided to stay at home and find that course "
                    "on russian websites for free (which is my favourite "
                    "part of the day) ",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: 0,
                          height: 1.8),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("Beginning the Udemy Course",
                    style: GoogleFonts.dmSerifText(
                      textStyle: const TextStyle(
                          fontSize: 37.3,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: 0,
                          height: 1.8),
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                    "So, as you can understand from the heading, I could find "
                    "that course on torrent for free. I've just downloaded "
                    "first day of that course and began watching (I hate the"
                    " internet in cyprus, so I didn't want to wait several "
                    "hours to download the whole course). On the first part "
                    "of the course, that tech dude began explaining about "
                    "the Flutter which I knew already from indian youtube "
                    "guys. So, I had to download next day of the course, but"
                    " since I was lazy I decided that I did enough for the "
                    "first day and I am doing great.\n But I want to finish "
                    "today's blog with famous quote Flutter.",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: 0,
                          height: 1.8),
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: IntrinsicHeight(
                  child: Row(
                    children: <Widget>[
                      const VerticalDivider(
                        endIndent: 25,
                        indent: 25,
                        color: Colors.black,
                        thickness: 3,
                      ),
                      // Container(
                      //     height: MediaQuery.of(context).size.height * 0.50,
                      //     width: MediaQuery.of(context).size.width * 0.005,
                      //     color: Colors.black),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Column(
                            children: [
                              Text(
                                "\nIn some ways, programming is like painting."
                                " You start with a blank canvas and certain "
                                "basic raw materials."
                                " You use a combination of science, art, and"
                                " craft to determine what to do with them.",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      letterSpacing: 0,
                                      height: 1.8),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Text("- Andrew Hunt.",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey,
                                            letterSpacing: 0,
                                            height: 1.8),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Footer()
            ],
          ),
        ));
  }
}
