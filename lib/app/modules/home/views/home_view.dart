import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/app/global/palette.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    List<Widget> screen = [
      Column(
        children: [Text('1'), Text('1')],
      ),
      Column(
        children: [Text('2'), Text('2')],
      ),
      Column(
        children: [Text('3'), Text('3')],
      ),
    ];

    return Scaffold(
      backgroundColor: backgroundLight,
      appBar: mediaQueryWidth < 700 == true ? AppBar() : null,
      body: mediaQueryWidth < 700 == true || mediaQueryHeight < 600 == true
          ? Column(
              children: [],
            )
          : Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: tone95,
                    child: Column(
                      children: [
                        //프로필.
                        // Expanded(
                        //   flex: 2,
                        //   child: Container(
                        //   ),
                        // ),
                        //네비게이션 버튼.
                        Expanded(
                          flex: 8,
                          child: Column(
                            children: [
                              Obx(
                                () => AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  height: mediaQueryHeight * 0.08,
                                  child: Material(
                                    color: controller.screenIndex.value == 0
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
                                              padding: EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: controller
                                                              .portfolioFocused
                                                              .value ==
                                                          true
                                                      ? containerLight
                                                      : tone95,
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Icon(
                                                      Icons.portrait_rounded,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text('Who am I'),
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
                                    color: controller.screenIndex.value == 1
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
                                              padding: EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: controller
                                                              .projectFocused
                                                              .value ==
                                                          true
                                                      ? containerLight
                                                      : tone95,
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Icon(Icons.code),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text('Project'),
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
                                    color: controller.screenIndex.value == 2
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
                                              padding: EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: controller.blogFocused
                                                              .value ==
                                                          true
                                                      ? containerLight
                                                      : tone95,
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Icon(
                                                      Icons.book_rounded,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text('Blog'),
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
                  child: Column(
                    children: [
                      Expanded(
                        child: Obx(
                          () => SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: screen[controller.screenIndex.value],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
