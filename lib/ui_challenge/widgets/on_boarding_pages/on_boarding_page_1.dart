import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenge/ui_challenge/constants/image_constants.dart';

class OnboardingPageOne extends StatelessWidget {
  const OnboardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageConstants.backgroungImage,
              ),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 355.h,
              ),
              SvgPicture.asset(
                ImageConstants.neuralTrainer,
                width: 171.w,
                height: 48.h,
              ),
              SizedBox(
                height: 211.h,
              ),
              Text(
                'COMENZÁ A VIVIR TU',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'NT EXPERIENCE',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
