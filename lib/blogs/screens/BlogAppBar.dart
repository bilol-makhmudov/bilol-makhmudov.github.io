import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/WIdgets/AlterLandingBody.dart';

import '../blog_menu_page.dart';
import 'aboutPage.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  BaseAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
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
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Portfolio()));
                  },
                  child: Text("Home",
                      style: GoogleFonts.arsenal(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainBlogMenu()));
                  },
                  child: Text("Blog",
                      style: GoogleFonts.arsenal(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutPage()));
                  },
                  child: Text("About me",
                      style: GoogleFonts.arsenal(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )))),
            ),
          ]),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: MySearchDelegate(),
                    );
                  },
                  icon: const Icon(Icons.search_rounded)),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}

class MySearchDelegate extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];
  @override
  Widget buildResults(BuildContext context) =>
      Center(child: Text(query, style: const TextStyle(fontSize: 64)));

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [];
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return ListTile(
              title: Text(suggestion),
              onTap: () {
                query = suggestion;
              });
        });
  }
}
