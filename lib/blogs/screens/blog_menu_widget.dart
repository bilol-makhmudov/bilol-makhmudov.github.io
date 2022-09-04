import 'package:flutter/material.dart';
import '../blog1_main.dart';

class blogWidget extends StatefulWidget {
  blogWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<blogWidget> createState() => _blogWidgetState();
}

class _blogWidgetState extends State<blogWidget> {
  late bool showBorder = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Blog1Main()));
      },
      splashColor: Colors.black54,
      child: Column(
        children: [
          Ink.image(
              image:
                  const AssetImage("assets/images/blog_assets/blogwidget.jpg"),
              height: 450,
              width: 350,
              fit: BoxFit.cover),
          const SizedBox(
            width: 350,
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("This is the first blog",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  )),
            ),
          ),
          SizedBox(
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: const [
                  Text("By: "),
                  Text("Makhmudov Biloliddin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 350,
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                  "My first day of the internship has begun with learning "
                  "about what is a Flutter in general. It was my first "
                  "day of web development at all, cause before I was "
                  "interested in algorithms, so my favourite language "
                  "used to be Python.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 70),
            child: SizedBox(
              width: 350,
              child: Align(
                alignment: Alignment.topLeft,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: showBorder
                        ? Border(
                            bottom: BorderSide(color: Colors.black, width: 1),
                          )
                        : null,
                  ),
                  child: InkWell(
                    onTap: () {},
                    onHover: (hovered) {
                      setState(() {
                        showBorder = hovered;
                      });
                    },
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Blog1Main()));
                      },
                      child: const Text('Read more',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ),
              ),
            ),
          )
          // SizedBox(
          //   width: 350,
          //   child: Align(
          //     alignment: Alignment.topLeft,
          //     child: TextButton(
          //       child: const Text("Learn more",
          //           style: TextStyle(
          //             fontWeight: FontWeight.w400,
          //             fontSize: 15,
          //             fontStyle: FontStyle.normal,
          //             color: Colors.grey,
          //           )),
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const Blog1Main()));
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
