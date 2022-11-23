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
        color: textDark,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: FloatingActionButton(
                    backgroundColor: textDark,
                    onPressed: () {},
                    child: Image(
                      image: AssetImage(
                        'assets/images/linkedin.png',
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
                    backgroundColor: textDark,
                    onPressed: () {
                      _launchGithub();
                    },
                    child: Image(
                      image: AssetImage(
                        'assets/images/free-icon-github-logo-25231.png',
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
                    backgroundColor: textDark,
                    onPressed: () {},
                    child: Image(
                      image: AssetImage(
                        'assets/images/email.png',
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
