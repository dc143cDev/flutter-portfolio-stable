import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myweb/app/modules/card/views/card_view.dart';
import 'package:myweb/app/modules/home/widgets/contactme.dart';
import 'package:myweb/app/modules/portfolio/views/portfolio_view.dart';

import '../../../../palette.dart';
import '../../../../responsive.dart';
import '../../devlog/views/devlog_view.dart';
import '../widgets/info.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> pages = [
    CardView(),
    PortfolioView(),
    DevlogView(),
  ];

  // 데스크탑, 태블릿 drawer
  Widget sideBar() {
    return Drawer(
      backgroundColor: primaryLight,
      child: SafeArea(
        child: Column(
          children: [
            Info(),
            Expanded(
              child: NavigationRail(
                labelType: NavigationRailLabelType.all,
                backgroundColor: primaryLight,
                onDestinationSelected: (int index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                selectedIndex: selectedIndex,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.account_circle_outlined),
                    label: Text('Who am i'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.account_balance_wallet),
                    label: Text('Portfolio'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.add_a_photo),
                    label: Text('Devlog'),
                  ),
                ],
                selectedIconTheme: IconThemeData(color: primaryLight),
                unselectedIconTheme: IconThemeData(color: primaryLight),
                selectedLabelTextStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'RB',
                  color: accentColor,
                  fontSize: 20,
                ),
                unselectedLabelTextStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'RB',
                  color: textDark,
                  fontSize: 16,
                ),
              ),
            ),
            ContactMe(),
          ],
        ),
      ),
    );
  }

  int selectedIndex = 0;

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
      drawer: sideBar(), // 모바일 해상도 버전 AppBar with Drawer
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  //데스크탑 버전 사이드바 Drawer
                  child: sideBar(),
                ),
              // SizedBox(
              //   width: dafPadding,
              // ),
              Expanded(
                flex: 7,
                child: pages[selectedIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
