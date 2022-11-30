import 'package:flutter/material.dart';

// 테마 컬러 팔레트. 추후 테마 체인지 버튼 구현시 프라이머리의 두 색을 치환.
const primaryLight = Color(0xFFececec);
const primaryDark = Color(0xff1b1b1b);
const secondaryColor = Color(0xFF4c4c4c);
const accentBlue = Color(0xFF42bae6);
const accentRed = Color(0xFFeb5c6c);
const accentYellow = Color(0xFFfbd33c);
const bgColor = Color(0xFFffffff);
const textLight = Color(0xFFe0dbde);
const textDark = Color(0xFF000302);

// 자주 쓰는 값들 미리 지정.
const dafPadding = 20.0;
const dafDuration = Duration(seconds: 1);
const maxWidth = 1440.0;

//폰트 테마. 테마에 적힌 색과 실제 적히는 색은 반대임. 라이트 테마 - 블랙 컬러 폰트. 다크 테마 - 라이트 컬러 폰트.
lightTextEng() {
  return const TextStyle(
    fontWeight: FontWeight.w300,
    fontFamily: 'TW',
    color: textDark,
  );
}

darkTextEng() {
  return const TextStyle(
    fontWeight: FontWeight.w300,
    fontFamily: 'TW',
    color: textLight,
  );
}

lightTextKr() {
  return const TextStyle(
    fontWeight: FontWeight.w300,
    fontFamily: 'IBM',
    color: textDark,
  );
}

darkTextKr() {
  return const TextStyle(
    fontWeight: FontWeight.w300,
    fontFamily: 'IBM',
    color: textLight,
  );
}

titleEng() {
  return const TextStyle(
    fontFamily: 'TW',
    fontWeight: FontWeight.w300,
    fontSize: 26,
  );
}
