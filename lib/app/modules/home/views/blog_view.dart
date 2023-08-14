import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/app/global/global_controller.dart';

class BlogView extends GetView {
  const BlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlobalController>(
      init: GlobalController(),
      builder: (global) {
        return Container();
      },
    );
  }
}
