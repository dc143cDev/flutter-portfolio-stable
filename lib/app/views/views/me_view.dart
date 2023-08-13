import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MeView extends GetView {
  const MeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
