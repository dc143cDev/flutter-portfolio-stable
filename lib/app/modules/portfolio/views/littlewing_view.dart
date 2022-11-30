import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myweb/palette.dart';

class LittleWingView extends StatelessWidget {
  const LittleWingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        color: accentRed,
      ),
    );
  }
}
