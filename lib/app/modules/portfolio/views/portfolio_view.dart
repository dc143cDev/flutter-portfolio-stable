import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myweb/app/modules/portfolio/views/littlewing_view.dart';
import 'package:myweb/app/modules/portfolio/views/team_project_view.dart';
import 'package:myweb/palette.dart';

import '../controllers/portfolio_controller.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ABOUT ME",
              style: titleEng(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "SKILLS",
              style: titleEng(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Container(
                      child: Image(
                        image: AssetImage('assets/images/flutterlogo.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  SizedBox(
                    height: 75,
                    width: 160,
                    child: Container(
                      child: Text(
                        'for Cross Platform App\niOS/android\nWeb App\nwith GetX State Management',
                        style: TextStyle(
                            fontFamily: 'TW',
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Container(
                      child: Image(
                        image: AssetImage('assets/images/Firebase-02.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  SizedBox(
                    height: 75,
                    width: 160,
                    child: Container(
                      child: Text(
                        'for backend\nDB/Storage\nAuthentication\nHosting',
                        style: TextStyle(
                            fontFamily: 'TW',
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "LANGUAGE",
                  style: titleEng(),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Dart 70%",
                  style: TextStyle(
                    color: accentBlue,
                    fontFamily: 'TW',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "JavaScript 20%",
                  style: TextStyle(
                    color: accentRed,
                    fontFamily: 'TW',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Python 10%",
                  style: TextStyle(
                    color: accentYellow,
                    fontFamily: 'TW',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(width: 800, height: 5, child: Line()),
          ],
        ),
      ),
    );
  }
}

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: accentBlue,
                ),
              ),
              // SizedBox(
              //   height: 100,
              //   width: 100,
              //   child: Text(
              //     'Dart',
              //     style: TextStyle(
              //         color: accentBlue,
              //         fontSize: 10,
              //         fontWeight: FontWeight.w300,
              //         fontFamily: 'TW'),
              //   ),
              // ),
              Expanded(
                flex: 4,
                child: Container(
                  color: accentBlue,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: accentRed,
                ),
              ),
              // Text(
              //   'JavaScript',
              //   style: TextStyle(
              //       color: accentRed,
              //       fontSize: 10,
              //       fontWeight: FontWeight.w300,
              //       fontFamily: 'TW'),
              // ),
              Expanded(
                flex: 4,
                child: Container(
                  color: accentRed,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: accentYellow,
                ),
              ),
              // Text(
              //   'Python',
              //   style: TextStyle(
              //       color: accentYellow,
              //       fontSize: 10,
              //       fontWeight: FontWeight.w300,
              //       fontFamily: 'TW'),
              // ),
              Expanded(
                flex: 4,
                child: Container(
                  color: accentYellow,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
