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

  Future<void> _launchVelog() async {
    if (!await launchUrl(_velogUrl)) {
      throw 'Could not launch $_velogUrl';
    }
  }

  final Uri _velogUrl = Uri.parse('https://velog.io/@dc143c_dev');

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
                    onPressed: () {
                      _launchVelog();
                    },
                    child: Image(
                      height: 20,
                      width: 20,
                      image: AssetImage('assets/images/Subject.png'),
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
                    onPressed: () async {
                      String email = 'devc143c@gmail.com';
                      String sub = '';
                      String body = '';

                      final Uri _emailUrl =
                          Uri.parse("mailto:$email?subject=$sub&body=$body");
                      if (!await launchUrl(_emailUrl)) {
                        throw 'Could not launch $_emailUrl';
                      }
                    },
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
