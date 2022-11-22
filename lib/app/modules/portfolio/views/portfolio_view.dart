import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/palette.dart';

import '../controllers/portfolio_controller.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLight,
      body: Center(
        child: Text(
          'PortfolioView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
