import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:webapp/blogs/screens/blog_menu_widget.dart';

import '../WIdgets/footer.dart';
import 'screens/BlogAppBar.dart';

void main() {
  runApp(const MainBlogMenu());
}

class MainBlogMenu extends StatelessWidget {
  const MainBlogMenu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Menu',
      theme: ThemeData(
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
      home: const BlogMenu(),
    );
  }
}

class BlogMenu extends StatelessWidget {
  const BlogMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(),
        body: SingleChildScrollView(
            child: Column(
          children: [BlogMenuBody(), Footer()],
        )));
  }
}

class BlogMenuBody extends StatelessWidget {
  const BlogMenuBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ResponsiveGridRow(children: [
        ResponsiveGridCol(xs: 12, md: 4, sm: 6, child: blogWidget()),
        ResponsiveGridCol(xs: 12, md: 4, sm: 6, child: blogWidget()),
        ResponsiveGridCol(xs: 12, md: 4, sm: 6, child: blogWidget()),
      ]),
    );
  }
}
