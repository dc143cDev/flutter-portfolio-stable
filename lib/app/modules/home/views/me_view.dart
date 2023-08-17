import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/app/global/palette.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../global/global_controller.dart';

//플러터 로고.
class StylizedFlutterLogo extends StatelessWidget {
  final ColorFilter colorFilter;
  final double? size;

  StylizedFlutterLogo({required this.colorFilter, this.size});

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: colorFilter,
      child: FlutterLogo(size: size),
    );
  }
}

//view.
class MeView extends GetView {
  MeView({Key? key}) : super(key: key);

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
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    return GetBuilder<GlobalController>(
      init: GlobalController(),
      builder: (global) {
        return SizedBox(
          width: mediaQueryWidth * 1,
          height: mediaQueryWidth < 700 == true
              ? mediaQueryHeight * 1.5
              : mediaQueryHeight * 1.8,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DC143C's Web",
                                  style: TextStyle(
                                    color: global.isDarkMode.value == true
                                        ? textDark
                                        : primaryCrimson,
                                    fontWeight: FontWeight.bold,
                                    fontSize: mediaQueryWidth * 0.05,
                                  ),
                                ),
                                Text(
                                  "Welcome to My Portfolio Web",
                                  style: TextStyle(
                                    color: global.isDarkMode.value == true
                                        ? textDark
                                        : primaryCrimson,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "You can look around the skill I have \nAnd the projects I've developed on this Web;",
                                    style: TextStyle(
                                      color: global.isDarkMode.value == true
                                          ? textDark
                                          : primaryCrimson,
                                      // fontWeight: FontWeight.bold,
                                      fontSize: mediaQueryWidth < 700 == true
                                          ? 10
                                          : 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(35),
                                  // topLeft: Radius.circular(25),
                                ),
                                color: global.isDarkMode.value == true
                                    ? textDark
                                    : primaryCrimson,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "I'm Cross Platform App Dev",
                                      style: TextStyle(
                                        color: global.isDarkMode.value == true
                                            ? onPrimaryDark
                                            : onPrimary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: mediaQueryHeight < 600 == true
                                            ? mediaQueryWidth * 0.03
                                            : mediaQueryWidth * 0.05,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "I started learnning Flutter to make my own apps,\nBut now I'm trying to make apps that can be used by \nMany people with more diverse skills;",
                                        style: TextStyle(
                                          color: global.isDarkMode.value == true
                                              ? onPrimaryDark
                                              : onPrimary,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              mediaQueryWidth < 700 == true
                                                  ? 10
                                                  : 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        //Skill
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                ),
                                color: global.isDarkMode.value == true
                                    ? thirdDark
                                    : thirdLight,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Skill",
                                      style: TextStyle(
                                        color: global.isDarkMode.value == true
                                            ? onThirdDark
                                            : textLight,
                                        fontWeight: FontWeight.bold,
                                        fontSize: mediaQueryWidth * 0.05,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: mediaQueryHeight * 0.065,
                                          height: mediaQueryHeight * 0.065,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color:
                                                      global.isDarkMode.value ==
                                                              true
                                                          ? onThirdDark
                                                          : textLight,
                                                  width: 2.5),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: StylizedFlutterLogo(
                                                colorFilter: ColorFilter.matrix(
                                                  <double>[
                                                    0.213,
                                                    0.769,
                                                    0.189,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    0,
                                                    1,
                                                    0,
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "  Flutter",
                                          style: TextStyle(
                                            color:
                                                global.isDarkMode.value == true
                                                    ? onThirdDark
                                                    : textLight,
                                            fontWeight: FontWeight.bold,
                                            fontSize: mediaQueryWidth * 0.02,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: mediaQueryHeight * 0.08,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "   · GetX State Management",
                                              style: TextStyle(
                                                color:
                                                    global.isDarkMode.value ==
                                                            true
                                                        ? onThirdDark
                                                        : textLight,
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    mediaQueryWidth * 0.015,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: mediaQueryHeight * 0.065,
                                            height: mediaQueryHeight * 0.065,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: global.isDarkMode
                                                                .value ==
                                                            true
                                                        ? onThirdDark
                                                        : textLight,
                                                    width: 2.5),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Image(
                                                  image: AssetImage(
                                                    'images/firebase_logo.png',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "  Firebase",
                                            style: TextStyle(
                                              color: global.isDarkMode.value ==
                                                      true
                                                  ? onThirdDark
                                                  : textLight,
                                              fontWeight: FontWeight.bold,
                                              fontSize: mediaQueryWidth * 0.02,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: mediaQueryHeight * 0.065,
                                            height: mediaQueryHeight * 0.065,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: global.isDarkMode
                                                                .value ==
                                                            true
                                                        ? onThirdDark
                                                        : textLight,
                                                    width: 2.5),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Image(
                                                  image: AssetImage(
                                                    'images/awslogo.png',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "  AWS EC2",
                                            style: TextStyle(
                                              color: global.isDarkMode.value ==
                                                      true
                                                  ? onThirdDark
                                                  : textLight,
                                              fontWeight: FontWeight.bold,
                                              fontSize: mediaQueryWidth * 0.02,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: mediaQueryHeight * 0.065,
                                            height: mediaQueryHeight * 0.065,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: global.isDarkMode
                                                                .value ==
                                                            true
                                                        ? onThirdDark
                                                        : textLight,
                                                    width: 2.5),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Icon(Icons.sd_storage),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "  SQL",
                                            style: TextStyle(
                                              color: global.isDarkMode.value ==
                                                      true
                                                  ? onThirdDark
                                                  : textLight,
                                              fontWeight: FontWeight.bold,
                                              fontSize: mediaQueryWidth * 0.02,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Expanded(
                                    //   child: Row(
                                    //     children: [
                                    //       SizedBox(
                                    //         width: mediaQueryHeight * 0.08,
                                    //       ),
                                    //       Expanded(
                                    //         child: Text(
                                    //           "   · Storage",
                                    //           style: TextStyle(
                                    //             color:
                                    //                 global.isDarkMode.value ==
                                    //                         true
                                    //                     ? onThirdDark
                                    //                     : textLight,
                                    //             fontWeight: FontWeight.bold,
                                    //             fontSize:
                                    //                 mediaQueryWidth * 0.015,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // Expanded(
                                    //   child: Row(
                                    //     children: [
                                    //       SizedBox(
                                    //         width: mediaQueryHeight * 0.08,
                                    //       ),
                                    //       Expanded(
                                    //         child: Text(
                                    //           "   · Database",
                                    //           style: TextStyle(
                                    //             color:
                                    //                 global.isDarkMode.value ==
                                    //                         true
                                    //                     ? onThirdDark
                                    //                     : textLight,
                                    //             fontWeight: FontWeight.bold,
                                    //             fontSize:
                                    //                 mediaQueryWidth * 0.015,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // Expanded(
                                    //   child: Row(
                                    //     children: [
                                    //       SizedBox(
                                    //         width: mediaQueryHeight * 0.08,
                                    //       ),
                                    //       Expanded(
                                    //         child: Text(
                                    //           "   · Authentication",
                                    //           style: TextStyle(
                                    //             color:
                                    //                 global.isDarkMode.value ==
                                    //                         true
                                    //                     ? onThirdDark
                                    //                     : textLight,
                                    //             fontWeight: FontWeight.bold,
                                    //             fontSize:
                                    //                 mediaQueryWidth * 0.015,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    // Expanded(
                                    //   child: Row(
                                    //     children: [
                                    //       SizedBox(
                                    //         width: mediaQueryHeight * 0.065,
                                    //         height: mediaQueryHeight * 0.065,
                                    //         child: Container(
                                    //           decoration: BoxDecoration(
                                    //             borderRadius:
                                    //                 BorderRadius.circular(20),
                                    //             border: Border.all(
                                    //                 color: global.isDarkMode.value == true ? onThirdDark :textLight,
                                    //                 width: 2.5),
                                    //           ),
                                    //           child: Padding(
                                    //             padding: EdgeInsets.all(8.0),
                                    //             child: Image(
                                    //               image: AssetImage(
                                    //                 'images/jsnodelogo.png',
                                    //               ),
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //       Text(
                                    //         "  Node.js",
                                    //         style: TextStyle(
                                    //           color: global.isDarkMode.value == true ? onThirdDark :textLight,
                                    //           fontWeight: FontWeight.bold,
                                    //           fontSize: mediaQueryWidth * 0.02,
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // Expanded(
                                    //   child: Row(
                                    //     children: [
                                    //       SizedBox(
                                    //         width: mediaQueryHeight * 0.08,
                                    //       ),
                                    //       Text(
                                    //         "   · Web Server",
                                    //         style: TextStyle(
                                    //           overflow: TextOverflow.ellipsis,
                                    //           color: global.isDarkMode.value == true ? onThirdDark :textLight,
                                    //           fontWeight: FontWeight.bold,
                                    //           fontSize: mediaQueryWidth * 0.015,
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        //Code
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: global.isDarkMode.value == true
                                    ? thirdDark
                                    : thirdLight,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Code",
                                      style: TextStyle(
                                        color: global.isDarkMode.value == true
                                            ? onThirdDark
                                            : textLight,
                                        fontWeight: FontWeight.bold,
                                        fontSize: mediaQueryWidth * 0.05,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        _launchGithub();
                                      },
                                      child: Text(
                                        "gitHub />",
                                        style: TextStyle(
                                          color: global.isDarkMode.value == true
                                              ? tertiaryDark
                                              : tertiaryLight,
                                          fontWeight: FontWeight.bold,
                                          fontSize: mediaQueryWidth * 0.015,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        //Blog
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(35),
                                ),
                                color: global.isDarkMode.value == true
                                    ? thirdDark
                                    : thirdLight,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Blog",
                                      style: TextStyle(
                                        color: global.isDarkMode.value == true
                                            ? onThirdDark
                                            : textLight,
                                        fontWeight: FontWeight.bold,
                                        fontSize: mediaQueryWidth * 0.05,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        _launchVelog();
                                      },
                                      child: Text(
                                        "Velog />",
                                        style: TextStyle(
                                          color: global.isDarkMode.value == true
                                              ? tertiaryDark
                                              : tertiaryLight,
                                          fontWeight: FontWeight.bold,
                                          fontSize: mediaQueryWidth * 0.015,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(35),
                                  // topLeft: Radius.circular(25),
                                ),
                                color: global.isDarkMode.value == true
                                    ? tertiaryDark
                                    : secondLight,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Contact",
                                      style: TextStyle(
                                        color: global.isDarkMode.value == true
                                            ? onPrimaryDark
                                            : onPrimary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: mediaQueryWidth * 0.05,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "( ) =>",
                                          style: TextStyle(
                                            color:
                                                global.isDarkMode.value == true
                                                    ? onPrimaryDark
                                                    : onPrimary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: mediaQueryWidth * 0.04,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  " ",
                                  style: TextStyle(
                                    color: primaryCrimson,
                                    fontWeight: FontWeight.bold,
                                    fontSize: mediaQueryWidth * 0.05,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    String email = 'devc143c@gmail.com';
                                    String sub = '';
                                    String body = '';

                                    final Uri _emailUrl = Uri.parse(
                                        "mailto:$email?subject=$sub&body=$body");
                                    if (!await launchUrl(_emailUrl)) {
                                      throw 'Could not launch $_emailUrl';
                                    }
                                  },
                                  child: Text(
                                    "devc143c@gmail.com;",
                                    style: TextStyle(
                                      color: global.isDarkMode.value == true
                                          ? textDark
                                          : primaryCrimson,
                                      // fontWeight: FontWeight.bold,
                                      fontSize: mediaQueryWidth * 0.04,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
