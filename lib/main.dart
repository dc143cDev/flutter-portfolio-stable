import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/global/color_schemes.g.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      //material #dc143c color scheme.
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      debugShowCheckedModeBanner: false,
      title: "",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
