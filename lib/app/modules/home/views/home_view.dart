import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/app/modules/home/widgets/sidebar.dart';
import 'package:myweb/palette.dart';

import '../../../../responsive.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  final int currentIndex = 0;
  final List<Widget> body = const [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLight,
      // 해상도에 따라 데스크탑일시 앱바 x. 태블릿 환경이면 앱바 with drawer
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: primaryDark,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideBar(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideBar(),
                ),
              SizedBox(
                width: dafPadding,
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
