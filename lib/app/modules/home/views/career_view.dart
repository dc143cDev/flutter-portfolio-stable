import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CareerView extends GetView {
  const CareerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CareerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CareerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
