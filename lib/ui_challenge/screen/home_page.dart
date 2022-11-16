import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ui_challenge/ui_challenge/constants/color_constants.dart';
import 'package:flutter_ui_challenge/ui_challenge/constants/image_constants.dart';
import 'package:flutter_ui_challenge/ui_challenge/constants/string_contants.dart';
import 'package:flutter_ui_challenge/ui_challenge/model/on_boarding_pade_model.dart';
import 'package:flutter_ui_challenge/ui_challenge/widgets/button_widget.dart';

import 'package:flutter_ui_challenge/ui_challenge/widgets/on_boarding_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);
  final List<OnBoardingPageModel> _pages = [
    OnBoardingPageModel(
        image: ImageConstants.firstOnboarding,
        title: StringConstants.firstOnBTitle,
        subtitle: StringConstants.firstOnBSubTitle),
    OnBoardingPageModel(
        image: ImageConstants.secongOnboarding,
        title: StringConstants.secondOnBTitle,
        subtitle: StringConstants.secondOnBSubTilte),
    OnBoardingPageModel(
        image: ImageConstants.thirdOnboarding,
        title: StringConstants.thirdOnBTitle,
        subtitle: StringConstants.thirdOnBSubtitle),
    OnBoardingPageModel(
        image: ImageConstants.fourthOnboarding,
        title: StringConstants.fourOnBTitle,
        subtitle: StringConstants.fourOnBSubTitle)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
              onPageChanged: (index) {
                // Change current page when pageview changes
                setState(() {
                  _currentPage = index;
                });
              },
              controller: _pageController,
              itemCount: _pages.length,
              scrollDirection: Axis.horizontal,
              dragStartBehavior: DragStartBehavior.start,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                final item = _pages[index];
                return OnboardingPage(
                  image: item.image,
                  index: index,
                  title: item.title,
                  subtite: item.subtitle,
                );
              }),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _pages
                    .map(
                      (e) => Container(

                          /* here i am not using .h an d.w because while creating
                          cirle if we use it will not be same in different device 
                          to prevent from it being irregular shape */
                          height: 8,
                          width: 8,
                          margin: EdgeInsets.only(right: 16.w),
                          decoration: _currentPage == _pages.indexOf(e)
                              ? BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.primaryColor),
                                  borderRadius: BorderRadius.circular(2.r))
                              : BoxDecoration(
                                  color: AppColors.unselectedColor,
                                  borderRadius: BorderRadius.circular(2.r))),
                    )
                    .toList(),
              ),
              SizedBox(
                height: 48.h,
              ),
              const ButtonWidget(),
              SizedBox(
                height: 24.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
