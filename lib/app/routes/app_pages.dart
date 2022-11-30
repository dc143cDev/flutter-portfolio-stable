import 'package:get/get.dart';

import '../modules/devlog/bindings/devlog_binding.dart';
import '../modules/devlog/views/devlog_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mobile/bindings/mobile_binding.dart';
import '../modules/mobile/views/mobile_view.dart';
import '../modules/portfolio/bindings/portfolio_binding.dart';
import '../modules/portfolio/views/portfolio_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static const MOBILE = Routes.MOBILE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MOBILE,
      page: () => const MobileView(),
      binding: MobileBinding(),
    ),
    GetPage(
      name: _Paths.PORTFOLIO,
      page: () => const PortfolioView(),
      binding: PortfolioBinding(),
    ),
    GetPage(
      name: _Paths.DEVLOG,
      page: () => const DevlogView(),
      binding: DevlogBinding(),
    ),
  ];
}
