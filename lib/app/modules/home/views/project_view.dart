import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/app/global/palette.dart';
import 'package:myweb/app/modules/home/controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../global/global_controller.dart';

class ProjectView extends GetView<HomeController> {
  ProjectView({Key? key}) : super(key: key);

  Future<void> _launchMotomee() async {
    if (!await launchUrl(_motomeeUrl)) {
      throw 'Could not launch $_motomeeUrl';
    }
  }

  final Uri _motomeeUrl = Uri.parse('https://play.google.com/store/apps/details?id=com.dc143c.memotile');

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    return GetBuilder<GlobalController>(
      init: GlobalController(),
      builder: (global) {
        return SizedBox(
          width: mediaQueryWidth * 1,
          height: mediaQueryHeight * 1,
          child: Padding(
            padding: EdgeInsets.all(46.0),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '2023',
                        style: TextStyle(
                          color: primaryCrimson,
                          fontWeight: FontWeight.bold,
                          fontSize: 65,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: mediaQueryWidth < 700 == true ? 10 : 3,
                        child: Stack(
                          children: [
                            Obx(
                              () => Material(
                                child: InkWell(
                                  onTap: () {
                                    if(mediaQueryWidth < 700){
                                      controller.motomeeFocused.value = true;
                                    }
                                  },
                                  onHover: (hm) {
                                    if (hm == true && mediaQueryWidth > 700) {
                                      controller.motomeeFocused.value = true;
                                      print('objec');
                                    } else {
                                      controller.motomeeFocused.value = false;
                                    }
                                  },
                                  child: IgnorePointer(
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      height: controller.motomeeFocused.value ==
                                              true
                                          ? mediaQueryHeight * 0.5
                                          : mediaQueryHeight * 0.3,
                                      // width: mediaQueryWidth * 0.3,
                                      decoration: BoxDecoration(
                                        color:
                                            controller.motomeeFocused.value ==
                                                    true
                                                ? third80Light
                                                : thirdLight,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: controller
                                                    .motomeeFocused.value ==
                                                true
                                            ? [
                                                Expanded(
                                                  flex: 7,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 16.0,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              mediaQueryHeight *
                                                                  0.23,
                                                        ),
                                                        Expanded(
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Motomee is a memo app that works like a chat app',
                                                                  style:
                                                                      TextStyle(
                                                                        color: textLight,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                        fontSize: mediaQueryWidth * 0.015,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'And also Optimized for typing and manipulating simple notes',
                                                                  style:
                                                                      TextStyle(
                                                                        color: textLight,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                        fontSize: mediaQueryWidth * 0.015,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Available on  ',
                                                                  style:
                                                                      TextStyle(
                                                                    color:
                                                                        tertiaryLight,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons.android,
                                                                color:
                                                                    tertiaryLight,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  // flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 16.0,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            'Motomee - chat like Memo app',
                                                            style: TextStyle(
                                                              color: textLight,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(Icons.arrow_drop_down_outlined),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]
                                            : [
                                                Expanded(
                                                  flex: 7,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 16.0,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              mediaQueryHeight *
                                                                  0.23,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 16.0,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            'Motomee - chat like Memo app',
                                                            style: TextStyle(
                                                              color: textLight,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.arrow_drop_down,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                _launchMotomee();
                              },
                              child: Container(
                                height: mediaQueryHeight * 0.23,
                                // width: mediaQueryWidth * 0.3,
                                decoration: BoxDecoration(
                                  color: Color(0xfffbfbfb),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: mediaQueryWidth < 700 == true
                                            ? mediaQueryWidth * 0.2
                                            : mediaQueryWidth * 0.07,
                                        width: mediaQueryWidth < 700 == true
                                            ? mediaQueryWidth * 0.2
                                            : mediaQueryWidth * 0.07,
                                        child: Image(
                                          image: AssetImage(
                                            'images/motomeelogowj2.jpeg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: mediaQueryWidth < 700 == true ? 0 : 7,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Project",
                              style: TextStyle(
                                color: global.isDarkMode.value == true
                                    ? textDark
                                    : primaryCrimson,
                                fontWeight: FontWeight.bold,
                                fontSize: mediaQueryWidth * 0.05,
                              ),
                            ),
                            Text(
                              "This is a page of my projects;",
                              style: TextStyle(
                                color: global.isDarkMode.value == true
                                    ? textDark
                                    : primaryCrimson,
                                // fontWeight: FontWeight.bold,
                                fontSize:
                                    mediaQueryWidth < 900 == true ? 10 : 20,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Click on a project to view a detailed description of the project;",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: global.isDarkMode.value == true
                                      ? textDark
                                      : primaryCrimson,
                                  // fontWeight: FontWeight.bold,
                                  fontSize:
                                      mediaQueryWidth < 900 == true ? 10 : 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
