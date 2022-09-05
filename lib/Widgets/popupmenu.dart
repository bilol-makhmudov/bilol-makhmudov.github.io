import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/blogs/screens/aboutPage.dart';

import '../blogs/blog_menu_page.dart';
import '../blogs/screens/BlogAppBar.dart';

class SmallAppBar extends StatefulWidget {
  const SmallAppBar({Key? key}) : super(key: key);

  @override
  State<SmallAppBar> createState() => _SmallAppBarState();
}

class _SmallAppBarState extends State<SmallAppBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          TextButton(
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
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
          Container(
            color: Colors.transparent,
            width: 50,
            height: 50,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: MenuWidget(),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        offset: const Offset(-100, 0),
        customButton: const Icon(
          Icons.menu,
          size: 50,
          color: Colors.white,
        ),
        customItemsIndexes: const [3],
        customItemsHeight: 8,
        items: [
          ...MenuItems.firstItems.map(
            (item) => DropdownMenuItem<MenuItem>(
              value: item,
              child: MenuItems.buildItem(item),
            ),
          ),
          // const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
          // ...MenuItems.secondItems.map(
          //       (item) =>
          //       DropdownMenuItem<MenuItem>(
          //         value: item,
          //         child: MenuItems.buildItem(item),
          //       ),
          // ),
        ],
        onChanged: (value) {
          MenuItems.onChanged(context, value as MenuItem);
        },
        itemHeight: 55,
        itemPadding: const EdgeInsets.only(left: 16, right: 16),
        dropdownWidth: MediaQuery.of(context).size.width,
        dropdownMaxHeight: MediaQuery.of(context).size.height,
        dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
        buttonHeight: 30,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.black,
        ),
        dropdownElevation: 8,
      ),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [blog, aboutMe, downloadCV];
  // static const List<MenuItem> secondItems = [logout];

  static const blog = MenuItem(text: 'Blog', icon: Icons.book);
  static const aboutMe = MenuItem(text: 'About Me', icon: Icons.info);
  static const downloadCV = MenuItem(text: 'Download CV', icon: Icons.download);
  // static const logout = MenuItem(text: 'Log Out', icon: Icons.logout);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.blog:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MainBlogMenu()));
        //Do something
        break;
      case MenuItems.downloadCV:
        //Do something
        break;
      case MenuItems.aboutMe:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AboutPage()));
        //Do something
        break;
      // case MenuItems.logout:
      // //Do something
      //   break;
    }
  }
}
