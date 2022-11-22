import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mobile_controller.dart';

class MobileView extends GetView<MobileController> {
  const MobileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MobileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MobileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
