import 'package:flutter/material.dart';

const fontFamily = "Nunito";

abstract class AppTextStyles {
  static const zero = TextStyle(fontSize: 0.01);

  static const s18w700 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );

  static const s12w500 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    // color: Colors.grey,
  );
  static const s18w500 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    // color: Colors.grey,
  );
  static const s16w800 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    fontFamily: fontFamily,
  );
  static const s11w400 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    // color: Colors.black,
  );
  static const s14w400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    // color: Colors.grey

  );
  static const s20w400 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    color: Color(0xffFFFFFF),

  );
  static const s24w700 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
    color: Color(0xffFFFFFF),

  );
  static const sg14w400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    color: Color(0xffBCBCBF),
  );
  static const sg11w400 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    color: Color(0xffBCBCBF),

  );
}