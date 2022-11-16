import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_ui_challenge/ui_challenge/widgets/on_boarding_pages/on_boarding_page_1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            child: PageView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _pageController,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const OnboardingPageOne()),
          ),
          Positioned(
            bottom: 126.h,
            child: Container(
              height: 8.h,
              width: 8.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.red),
            ),
          ),
          SizedBox(
            height: 48.h,
          ),
          Container(
            height: 54.h,
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}
