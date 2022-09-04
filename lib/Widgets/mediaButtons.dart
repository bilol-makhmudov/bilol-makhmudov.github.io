import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaButtons extends StatelessWidget {
  const MediaButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  const RotatedBox(
                      quarterTurns: 1,
                      child: Text("Follow   ",
                          style: TextStyle(color: Colors.white))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {
                        launch(
                            "https://www.facebook.com/biloliddin.makhmudov.5/");
                      },
                      icon: Image.asset(
                        'assets/images/icons/facebook.png',
                        width: MediaQuery.of(context).size.width * 0.025,
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      label: const Text(""),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {
                        launch("https://www.linkedin.com/in/bilol-makhmudov/");
                      },
                      icon: Image.asset(
                        'assets/images/icons/linkedin.png',
                        width: MediaQuery.of(context).size.width * 0.06,
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      label: const Text(""),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                      onPressed: () {
                        launch("https://www.instagram.com/01.mahmudov/");
                      },
                      icon: Image.asset(
                        'assets/images/icons/instagram.png',
                        width: MediaQuery.of(context).size.width * 0.03,
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      label: const Text(""),
                    ),
                  )
                ],
              ))
        ]);
  }

  void _launchURl(String url) async => await canLaunch(url)
      ? await launch(url)
      : throw "Error in launching $url";
}
