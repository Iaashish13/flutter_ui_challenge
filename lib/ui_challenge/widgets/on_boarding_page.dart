import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_ui_challenge/ui_challenge/constants/image_constants.dart';
import 'package:flutter_ui_challenge/ui_challenge/constants/string_contants.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String? title;
  final String? subtite;
  final int index;
  const OnboardingPage({
    Key? key,
    required this.image,
    this.title,
    this.subtite,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: 1.sh,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: index == 0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 390.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: SvgPicture.asset(
                            ImageConstants.neuralTrainer,
                            width: 171.w,
                            height: 48.h,
                          ),
                        ),
                        SizedBox(
                          height: 190.h,
                        ),
                        Text(
                          title ?? 'N/A',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          subtite ?? 'N/A',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    )
                  : const SizedBox.shrink()),
          index != 0
              ? Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0.1),
                          Color.fromRGBO(0, 0, 0, 1),
                        ]),
                  ),
                  height: 1.sh,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 92.h,
                      ),
                      Text(
                        StringConstants.moveYourMind,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 426.h,
                      ),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              title ?? 'N/A',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.w),
                              child: Text(
                                subtite ?? 'N/A',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontSize: 16.sp, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
