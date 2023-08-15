import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/app/global/global_controller.dart';
import 'package:myweb/app/global/palette.dart';
import 'package:myweb/app/modules/home/views/project_view.dart';

import '../controllers/home_controller.dart';
import 'career_view.dart';
import 'me_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    List<Widget> screen = [
      MeView(),
      ProjectView(),
      CareerView(),
    ];

    Get.put(GlobalController());

    return GetBuilder<GlobalController>(
        init: GlobalController(),
        builder: (global) {
          return Scaffold(
            backgroundColor: global.isDarkMode.value == true
                ? backgroundDark
                : backgroundLight,
            appBar:
                mediaQueryWidth < 700 == true || mediaQueryHeight < 600 == true
                    ? AppBar()
                    : null,
            bottomNavigationBar:
                mediaQueryWidth < 700 == true || mediaQueryHeight < 600 == true
                    ? Obx(
                        () => BottomNavigationBar(
                          onTap: (i) {
                            controller.screenIndex.value = i;
                          },
                          currentIndex: controller.screenIndex.value,
                          items: [
                            BottomNavigationBarItem(
                                icon: Icon(Icons.portrait_rounded),
                                label: 'Who am I'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.code), label: 'Project'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.book_rounded),
                                label: 'Career'),
                          ],
                        ),
                      )
                    : null,
            body: mediaQueryWidth < 700 == true ||
                    mediaQueryHeight < 600 == true
                ? Column(
                    children: [
                      Expanded(
                        child: Obx(
                          () => SingleChildScrollView(
                            physics: AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            child: screen[controller.screenIndex.value],
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: global.isDarkMode.value == true ? containerDark :tone95,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Column(
                                  children: global.isDarkMode.value == true ? [
                                    Obx(
                                          () => AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        height: mediaQueryHeight * 0.08,
                                        child: Material(
                                          color:
                                          controller.screenIndex.value == 0
                                              ? backgroundDark
                                              : containerDark,
                                          child: InkWell(
                                            onTap: () {
                                              controller.screenIndex.value = 0;
                                            },
                                            onHover: (h) {
                                              if (h == true) {
                                                controller.portfolioOn();
                                              } else {
                                                controller.focusOut();
                                              }
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsets.all(8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: controller
                                                            .portfolioFocused
                                                            .value ==
                                                            true
                                                            ? primaryCrimson
                                                            : containerDark,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(25),
                                                      ),
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.all(
                                                              8.0),
                                                          child: Icon(
                                                            Icons
                                                                .portrait_rounded,
                                                            color: textDark,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Who am I',
                                                    style: TextStyle(
                                                        color: textDark,),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Obx(
                                          () => AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        height: mediaQueryHeight * 0.08,
                                        child: Material(
                                          color:
                                          controller.screenIndex.value == 1
                                              ? backgroundDark
                                              : containerDark,
                                          child: InkWell(
                                            onTap: () {
                                              controller.screenIndex.value = 1;
                                            },
                                            onHover: (h1) {
                                              if (h1 == true) {
                                                controller.projectOn();
                                              } else {
                                                controller.focusOut();
                                              }
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsets.all(8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: controller
                                                            .projectFocused
                                                            .value ==
                                                            true
                                                            ? primaryCrimson
                                                            : containerDark,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(25),
                                                      ),
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.all(
                                                              8.0),
                                                          child: Icon(
                                                            Icons.code,
                                                            color: textDark,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Project',
                                                    style: TextStyle(
                                                        color: textDark,),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Obx(
                                          () => AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        height: mediaQueryHeight * 0.08,
                                        child: Material(
                                          color:
                                          controller.screenIndex.value == 2
                                              ? backgroundDark
                                              : containerDark,
                                          child: InkWell(
                                            onTap: () {
                                              controller.screenIndex.value = 2;
                                            },
                                            onHover: (h2) {
                                              if (h2 == true) {
                                                controller.blogOn();
                                              } else {
                                                controller.focusOut();
                                              }
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsets.all(8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: controller
                                                            .blogFocused
                                                            .value ==
                                                            true
                                                            ? primaryCrimson
                                                            : containerDark,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(25),
                                                      ),
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.all(
                                                              8.0),
                                                          child: Icon(
                                                            Icons.book_rounded,
                                                            color: textDark,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Career',
                                                    style: TextStyle(
                                                      color: textDark,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ] :[
                                    Obx(
                                      () => AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        height: mediaQueryHeight * 0.08,
                                        child: Material(
                                          color:
                                              controller.screenIndex.value == 0
                                                  ? backgroundLight
                                                  : tone95,
                                          child: InkWell(
                                            onTap: () {
                                              controller.screenIndex.value = 0;
                                            },
                                            onHover: (h) {
                                              if (h == true) {
                                                controller.portfolioOn();
                                              } else {
                                                controller.focusOut();
                                              }
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: controller
                                                                    .portfolioFocused
                                                                    .value ==
                                                                true
                                                            ? containerLight
                                                            : tone95,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      ),
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Icon(
                                                            Icons
                                                                .portrait_rounded,
                                                            color: textLight,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Who am I',
                                                    style: TextStyle(
                                                        color: textLight),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Obx(
                                      () => AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        height: mediaQueryHeight * 0.08,
                                        child: Material(
                                          color:
                                              controller.screenIndex.value == 1
                                                  ? backgroundLight
                                                  : tone95,
                                          child: InkWell(
                                            onTap: () {
                                              controller.screenIndex.value = 1;
                                            },
                                            onHover: (h1) {
                                              if (h1 == true) {
                                                controller.projectOn();
                                              } else {
                                                controller.focusOut();
                                              }
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: controller
                                                                    .projectFocused
                                                                    .value ==
                                                                true
                                                            ? containerLight
                                                            : tone95,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      ),
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Icon(
                                                            Icons.code,
                                                            color: textLight,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Project',
                                                    style: TextStyle(
                                                        color: textLight),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Obx(
                                      () => AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        height: mediaQueryHeight * 0.08,
                                        child: Material(
                                          color:
                                              controller.screenIndex.value == 2
                                                  ? backgroundLight
                                                  : tone95,
                                          child: InkWell(
                                            onTap: () {
                                              controller.screenIndex.value = 2;
                                            },
                                            onHover: (h2) {
                                              if (h2 == true) {
                                                controller.blogOn();
                                              } else {
                                                controller.focusOut();
                                              }
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: controller
                                                                    .blogFocused
                                                                    .value ==
                                                                true
                                                            ? containerLight
                                                            : tone95,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      ),
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Icon(
                                                            Icons.book_rounded,
                                                            color: textLight,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Career',
                                                    style: TextStyle(
                                                      color: textLight,
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
                              //언어, 테마.
                              Expanded(
                                flex: 2,
                                child: Container(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Obx(
                          () => SingleChildScrollView(
                            physics: AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            child: screen[controller.screenIndex.value],
                          ),
                        ),
                      ),
                    ],
                  ),
          );
        });
  }
}
