import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myweb/app/modules/home/widgets/info.dart';
import 'package:get/get.dart';
import 'package:myweb/app/pages/contactme.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Info(),
            Expanded(
              child: ListView(
                children: [
                  sideBarItem(
                    icon: Icons.account_circle_outlined,
                    text: '',
                    onTap: () {
                      Get.to(
                        ContactMe(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget sideBarItem({
  required IconData icon,
  required String text,
  required GestureTapCallback onTap,
}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
