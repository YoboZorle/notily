import 'package:flutter/material.dart';

class Borders {
  static final BorderSide primaryBorder = BorderSide(
    color: Color.fromARGB(255, 112, 112, 112),
    width: 1,
    style: BorderStyle.solid,
  );

  static final BorderSide globalSearchBorder = BorderSide(
    color: Color.fromARGB(70, 0, 141, 210),
    width: 0.4,
    style: BorderStyle.solid,
  );
}

class AppColor {
  static final Color appColor = Color(0xFF3EA7FF);
  static final Color appBlack = Color(0xFF010104);
  static final Color appRed = Color(0xFFF83939);
  static final Color appGreen = Color(0xFF4DB95C);
  static final Color appBg = Color(0xFFF7F7F7);
}

class Radii {
  static final BorderRadiusGeometry k15pxRadius =
      BorderRadius.all(Radius.circular(15));
  static final BorderRadiusGeometry k35pxRadius = BorderRadius.only(
      topRight: Radius.circular(40), topLeft: Radius.circular(40));

  static final BorderRadiusGeometry k25pxRadius = BorderRadius.only(
      topRight: Radius.circular(25),
      topLeft: Radius.circular(25),
      bottomLeft: Radius.circular(25),
      bottomRight: Radius.circular(25));
}

class Shadows {
  static final BoxShadow primaryShadow = BoxShadow(
    color: Color.fromARGB(40, 0, 0, 0),
    offset: Offset(0, 4),
    blurRadius: 25,
  );

  static final BoxShadow primaryShadowTwo = BoxShadow(
    color: Color.fromARGB(46, 0, 0, 0),
    offset: Offset(0, -3),
    blurRadius: 40,
  );
}
