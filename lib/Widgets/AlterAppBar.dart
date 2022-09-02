import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/blogs/screens/BlogAppBar.dart';

import '../blogs/blog_menu_page.dart';
import '../blogs/screens/aboutPage.dart';

class AlterAppBar extends StatelessWidget {
  const AlterAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Bilol",
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 1)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 60),
          child: Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainBlogMenu()));
              },
              child: Text(
                "Blog",
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              },
              child: Text(
                "About Me",
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Download CV",
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1)),
              ),
            ),
          ),
        ),

        // Align(
        //   alignment: Alignment.topLeft,
        //   child: TextButton(
        //     onPressed: () {},
        //     style: ButtonStyle(foregroundColor:
        //         MaterialStateProperty.resolveWith<Color>(
        //             (Set<MaterialState> states) {
        //       if (states.contains(MaterialState.focused)) {
        //         return Colors.white;
        //       }
        //       if (states.contains(MaterialState.hovered)) {
        //         return Colors.blueGrey;
        //       }
        //       if (states.contains(MaterialState.pressed)) {
        //         return Colors.black;
        //       }
        //       return Colors.white;
        //     })),
        //     child: const Text("Bilol",
        //         style: TextStyle(fontSize: 30, fontStyle: FontStyle.normal)),
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.topRight,
        //   child: TextButton(
        //     onPressed: () {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) => const MainBlogMenu()));
        //     },
        //     style: ButtonStyle(foregroundColor:
        //         MaterialStateProperty.resolveWith<Color>(
        //             (Set<MaterialState> states) {
        //       if (states.contains(MaterialState.focused)) {
        //         return Colors.white;
        //       }
        //       if (states.contains(MaterialState.hovered)) {
        //         return Colors.blueGrey;
        //       }
        //       if (states.contains(MaterialState.pressed)) {
        //         return Colors.black;
        //       }
        //       return Colors.white;
        //     })),
        //     child: const Text("Blog",
        //         style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal)),
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.topRight,
        //   child: TextButton(
        //       onPressed: () {
        //         Navigator.push(context,
        //             MaterialPageRoute(builder: (context) => const AboutPage()));
        //       },
        //       style: ButtonStyle(foregroundColor:
        //           MaterialStateProperty.resolveWith<Color>(
        //               (Set<MaterialState> states) {
        //         if (states.contains(MaterialState.focused)) {
        //           return Colors.white;
        //         }
        //         if (states.contains(MaterialState.hovered)) {
        //           return Colors.blueGrey;
        //         }
        //         if (states.contains(MaterialState.pressed)) {
        //           return Colors.black;
        //         }
        //         return Colors.white;
        //       })),
        //       child: const Text("About me",
        //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal))),
        // ),
        // Align(
        //   alignment: Alignment.topRight,
        //   child: TextButton(
        //       onPressed: () {},
        //       style: ButtonStyle(foregroundColor:
        //           MaterialStateProperty.resolveWith<Color>(
        //               (Set<MaterialState> states) {
        //         if (states.contains(MaterialState.focused)) {
        //           return Colors.white;
        //         }
        //         if (states.contains(MaterialState.hovered)) {
        //           return Colors.blueGrey;
        //         }
        //         if (states.contains(MaterialState.pressed)) {
        //           return Colors.black;
        //         }
        //         return Colors.white;
        //       })),
        //       child: const Text("Download CV",
        //           style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal))),
        // ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
              child: IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: MySearchDelegate(),
                    );
                  },
                  icon: const Icon(Icons.search_rounded),
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
