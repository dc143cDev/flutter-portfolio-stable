import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../global/global_controller.dart';

class ProjectView extends GetView {
  const ProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    double mediaQueryHeight = MediaQuery.of(context).size.height;

    return GetBuilder<GlobalController>(
      init: GlobalController(),
      builder: (global) {
        return SizedBox(
          width: mediaQueryWidth * 0.8,
          height: mediaQueryHeight * 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [

              ],
            ),
          ),
        );
      },
    );
  }
}
