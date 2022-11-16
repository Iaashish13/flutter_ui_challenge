import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_challenge/ui_challenge/constants/color_constants.dart';
import 'package:flutter_ui_challenge/ui_challenge/constants/string_contants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 17.h),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(27.r)),
        child: Text(
          StringConstants.login,
          style:
              Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16.sp),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
