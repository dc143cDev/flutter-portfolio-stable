import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myweb/palette.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  ContactMe({Key? key}) : super(key: key);

  Future<void> _launchGithub() async {
    if (!await launchUrl(_githubUrl)) {
      throw 'Could not launch $_githubUrl';
    }
  }

  final Uri _githubUrl = Uri.parse('https://github.com/dc143cDev');

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Container(
        padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
        color: primaryLight,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: FloatingActionButton(
                    backgroundColor: accentBlue,
                    onPressed: () {},
                    child: Image(
                      height: 20,
                      width: 20,
                      image: AssetImage('assets/images/linkedin-2.png'),
                    ),
                    // child: Image(
                    //   image: AssetImage(
                    //     'assets/images/linkedin.png',
                    //   ),
                    // ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: FloatingActionButton(
                    backgroundColor: accentRed,
                    onPressed: () {
                      _launchGithub();
                    },
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image(
                        image: AssetImage('assets/images/github.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: FloatingActionButton(
                    backgroundColor: accentYellow,
                    onPressed: () {},
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image(
                        image: AssetImage('assets/images/paper-plane.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
