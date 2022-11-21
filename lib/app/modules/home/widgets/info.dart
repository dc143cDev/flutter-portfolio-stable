import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFFe3dbd3),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFdc143c),
            ),
            Spacer(),
            Text(
              "Yejoon Kim",
            ),
            Text(
              "Seoul \n Flutter Dev",
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
