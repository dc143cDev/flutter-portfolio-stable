import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myweb/palette.dart';

class TeamProjectView extends StatelessWidget {
  const TeamProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 650,
        width: 500,
        color: accentYellow,
      ),
    );
  }
}
