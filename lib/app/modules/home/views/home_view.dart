import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/app/modules/home/widgets/sidebar.dart';
import 'package:myweb/palette.dart';

import '../controllers/home_controller.dart';
import '../widgets/info.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark,
      drawer: SideBar(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
        ),
      ),
    );
  }
}
