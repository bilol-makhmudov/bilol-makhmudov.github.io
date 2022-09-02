import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/WIdgets/mediaButtons.dart';

import '../blogs/blog_menu_page.dart';
import 'AlterAppBar.dart';
import 'footer.dart';

class Portfolio extends StatelessWidget {
  Portfolio({Key? key}) : super(key: key);
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(alignment: Alignment.center, children: <Widget>[
                  ListView(children: [
                    CarouselSlider(
                      carouselController: carouselController,
                      items: [
                        //1st Image of Slider
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1.1,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.blueGrey.withOpacity(0.75),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                    "assets/images/landingphoto2.jpg")),
                          ),
                        ),
                        //2nd Image of Slider
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1.1,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                    "assets/images/desert.jpg")),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height,
                        enlargeCenterPage: true,
                        autoPlay: false,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.ease,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1600),
                        viewportFraction: 1,
                        // onPageChanged: (index, reasons) =>
                        //     setState(() => activeIndex = index)
                      ),
                    ),
                  ]),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Spacer(),
                              AutoSizeText(
                                "Created by Biloliddin Makhmudov",
                                maxLines: 3,
                                minFontSize: 5,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        letterSpacing: 1)),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  child: AutoSizeText(
                                    "My Flutter Internship Journey At Gigabyte LTD",
                                    maxLines: 3,
                                    minFontSize: 20,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.dmSerifDisplay(
                                        textStyle: TextStyle(
                                            fontSize: 78,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white,
                                            letterSpacing: 1)),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.3),
                          child: MediaButtons(),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AlterAppBar(),
                  ),
                ]),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: IconButton(
                              onPressed: () {
                                // Use the controller to change the current page
                                carouselController.previousPage();
                              },
                              icon: const Icon(Icons.arrow_back),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: IconButton(
                              onPressed: () {
                                // Use the controller to change the current page
                                carouselController.nextPage();
                              },
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          ),
                        ])),
              ),
              const BlogMenuBody(),
              const Footer()
            ],
          ),
        ),
      ]));
}
