import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/app/modules/devlog/bindings/devlog_binding.dart';
import 'package:myweb/app/modules/devlog/views/devlog_view.dart';
import 'package:myweb/app/modules/home/bindings/home_binding.dart';
import 'package:myweb/app/modules/home/views/home_view.dart';
import 'package:myweb/app/modules/portfolio/bindings/portfolio_binding.dart';
import 'package:myweb/app/modules/portfolio/views/portfolio_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/portfolio',
          page: () => PortfolioView(),
          binding: PortfolioBinding(),
        ),
        GetPage(
          name: '/devlog',
          page: () => DevlogView(),
          binding: DevlogBinding(),
        ),
      ],
    ),
  );
}
