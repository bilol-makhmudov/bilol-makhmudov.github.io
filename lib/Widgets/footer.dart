import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';

import '../blogs/blog_menu_page.dart';
import '../blogs/screens/aboutPage.dart';
import 'AlterLandingBody.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      width: MediaQuery.of(context).size.width * 1,
      color: Colors.grey[300],
      child: ResponsiveGridRow(children: [
        ResponsiveGridCol(xs: 6, md: 4, sm: 6, child: AboutOurSite()),
        ResponsiveGridCol(xs: 6, md: 4, sm: 6, child: SiteLinks()),
        ResponsiveGridCol(xs: 6, md: 4, sm: 6, child: FollowOnSocial())
      ]),
    );
  }
}

class AboutOurSite extends StatelessWidget {
  const AboutOurSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text("ABOUT OUR SITE",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    letterSpacing: 0,
                    height: 1.8),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 55),
            child: Text(
                "This website is built by Biloliddin Makhmudov only on "
                "educational purposes. Most of the materials are taken "
                "from open source websites.\nIt is hosted using the Github"
                " Pages.",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      letterSpacing: 0.8,
                      height: 1.8),
                )),
          )
        ],
      ),
    );
  }
}

class SiteLinks extends StatelessWidget {
  const SiteLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text("SITE LINKS",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    letterSpacing: 0,
                    height: 1.8),
              )),
          Padding(
            padding: const EdgeInsets.all(5.0),
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
                      color: Colors.black,
                    )))),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Portfolio()));
                },
                child: Text("Home",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    )))),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
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
                      color: Colors.black,
                    )))),
          ),
        ],
      ),
    );
  }
}

class FollowOnSocial extends StatelessWidget {
  const FollowOnSocial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text("FOLLOW ON SOCIAL MEDIA",
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    letterSpacing: 0,
                    height: 1.8),
              )),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextButton(
                onPressed: () {
                  launch("https://www.facebook.com/biloliddin.makhmudov.5/");
                },
                child: Text("Facebook")),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextButton(
                onPressed: () {
                  launch("https://www.instagram.com/01.mahmudov/");
                },
                child: Text("Instagram")),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 15),
            child: TextButton(
                onPressed: () {
                  launch("https://www.linkedin.com/in/bilol-makhmudov/");
                },
                child: Text("Linkedin")),
          ),
        ],
      ),
    );
  }
}
