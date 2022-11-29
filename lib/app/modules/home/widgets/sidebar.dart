import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myweb/app/modules/home/widgets/info.dart';
import 'package:get/get.dart';
import 'package:myweb/app/modules/home/widgets/contactme.dart';
import 'package:myweb/palette.dart';

//사이드바 위젯. 홈뷰의 로컬로 옮겨가면서 코드만 그대로, 사용은 안함.

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryLight,
      child: SafeArea(
        child: Column(
          children: [
            Info(),
            Expanded(
              child: NavigationRail(
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
                  )
                ],
              ),
            ),
            ContactMe(),
          ],
        ),
      ),
    );
  }
}
//
// Widget sideBarItem({
//   required IconData icon,
//   required String text,
//   required GestureTapCallback onTap,
// }) {
//   return ListTile(
//     title: Row(
//       children: <Widget>[
//         Icon(icon),
//         Padding(
//           padding: EdgeInsets.only(left: 8.0),
//           child: Text(text),
//         )
//       ],
//     ),
//     onTap: onTap,
//   );
// }
