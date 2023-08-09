import 'package:flutter/material.dart';
import 'package:myweb/palette.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: primaryLight,
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/codingcat.jpeg'),
            ),
            Spacer(),
            Text(
              "Yam",
              style: lightTextEng(),
            ),
            Spacer(),
            Text(
              "Cross Platform App Dev",
              style: lightTextEng(),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
