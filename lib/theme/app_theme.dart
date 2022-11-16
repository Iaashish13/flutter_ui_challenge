import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/ui_challenge/constants/color_constants.dart';

// Theme used in app

final appTheme = ThemeData(
  fontFamily: 'Rubik',
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 20.sp,
      color: Colors.white,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700,
    ),
    headline4: TextStyle(
      fontSize: 40.sp,
      color: AppColors.primaryColor,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700,
    ),
    bodyText2: TextStyle(
        fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.w500),
  ),
);
