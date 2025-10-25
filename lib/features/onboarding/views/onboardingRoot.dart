import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_colors.dart';
import 'package:islami/features/onboarding/views/onboarding1.dart';
import 'package:islami/features/onboarding/views/onboarding2.dart';
import 'package:islami/features/onboarding/views/onboarding3.dart';
import 'package:islami/features/onboarding/views/onboarding4.dart';
import 'package:islami/features/onboarding/views/onboarding5.dart';
import 'package:islami/root.dart';
import 'package:islami/shared/customText.dart';

class OnboardingRoot extends StatefulWidget {
  const OnboardingRoot({super.key});

  @override
  State<OnboardingRoot> createState() => _OnboardingRootState();
}

class _OnboardingRootState extends State<OnboardingRoot> {
  final PageController controller = PageController();
  int currentPage = 0;
  final List<Widget> views  = [
    //5 Screens for onboarding
    Onboarding1(),
    Onboarding2(),
    Onboarding3(),
    Onboarding4(),
    Onboarding5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPrimaryColor,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) => setState(() => currentPage = index),
              children: views, //5 Screens for onboarding
            ),
          ),
          // Navigation Controls
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: currentPage > 0
                      ? () => controller.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        )
                      : null,
                  child: Customtext(
                    text: 'Back',
                    color: AppColors.goldPrimaryColor,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(5, (index) {
                    bool isActive = index == currentPage;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: isActive ? 20 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: isActive
                            ? AppColors.goldPrimaryColor
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ),
                TextButton(
                  onPressed: () {
                    if (currentPage < 4) {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Root()),
                      );
                    }
                  },
                  child: currentPage == 4
                      ? // Finish word is on last onboarding screen (Not Next word)
                        Customtext(
                          text: 'Finish',
                          color: AppColors.goldPrimaryColor,
                        )
                      : Customtext(
                          text: 'Next',
                          color: AppColors.goldPrimaryColor,
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
