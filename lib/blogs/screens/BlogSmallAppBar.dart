import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../WIdgets/AlterLandingBody.dart';
import '../../Widgets/popupmenu.dart';
import 'BlogAppBar.dart';

class BlogSmallAppBar extends StatefulWidget {
  const BlogSmallAppBar({Key? key}) : super(key: key);

  @override
  State<BlogSmallAppBar> createState() => BlogSmallAppBarState();
}

class BlogSmallAppBarState extends State<BlogSmallAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Row(children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Portfolio()));
                  },
                  child: Text("Bilol",
                      style: GoogleFonts.arsenal(
                          textStyle: const TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )))),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 8),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: MySearchDelegate(),
                        );
                      },
                      icon: const Icon(Icons.search_sharp, size: 41),
                      color: Colors.white),
                ),
              ),
              const Align(alignment: Alignment.topRight, child: MenuWidget()),
            ])));
  }
}
