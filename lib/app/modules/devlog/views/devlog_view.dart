import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/palette.dart';

import '../controllers/devlog_controller.dart';

class DevlogView extends GetView<DevlogController> {
  const DevlogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Text(
          'DevlogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
