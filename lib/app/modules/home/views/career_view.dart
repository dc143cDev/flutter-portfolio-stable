import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../global/global_controller.dart';
import '../../../global/palette.dart';

class CareerView extends GetView {
  const CareerView({Key? key}) : super(key: key);
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
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Career",
                                style: TextStyle(
                                  color: global.isDarkMode.value == true
                                      ? textDark
                                      : primaryCrimson,
                                  fontWeight: FontWeight.bold,
                                  fontSize: mediaQueryWidth * 0.04,
                                ),
                              ),
                            ),
                            Text(
                              "This is a page of my Career;",
                              style: TextStyle(
                                color: global.isDarkMode.value == true
                                    ? textDark
                                    : primaryCrimson,
                                // fontWeight: FontWeight.bold,
                                fontSize:
                                mediaQueryWidth < 900 == true ? 10 : 20,
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
