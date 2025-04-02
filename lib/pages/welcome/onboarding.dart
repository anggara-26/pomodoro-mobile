import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fokusin/core/data/onboarding.dart';
import 'package:fokusin/core/theme/app_palette.dart';
import 'package:fokusin/core/theme/app_sizes.dart';
import 'package:fokusin/widgets/button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController(keepPage: true);
  int currentPage = 0;

  void _onLastButtonPressed(BuildContext context) {
    context.go('/login');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Center(
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) => setState(() => currentPage = value),
                itemCount: onBoardingListData.length,
                itemBuilder: (context, index) {
                  return Page(
                    image: onBoardingListData[index].image,
                    title: onBoardingListData[index].title,
                    subtitle: onBoardingListData[index].subtitle,
                    buttonText: onBoardingListData[index].buttonText,
                  );
                },
              ),
            ),
            Positioned(
              top: PomodoroSizes.md,
              child: SmoothPageIndicator(
                controller: controller,
                count: onBoardingListData.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: PomodoroColors.primary,
                  dotColor: Colors.grey.shade300,
                  expansionFactor: 5,
                ),
              ),
            ),
            Positioned(
              bottom: PomodoroSizes.xl,
              child: AnimatedFilledButton(
                onPressed: () {
                  if (controller.page!.toInt() <
                      onBoardingListData.length - 1) {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    _onLastButtonPressed(context);
                  }
                },
                width: MediaQuery.of(context).size.width - 40,
                text: onBoardingListData[currentPage].buttonText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;
  const Page({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PomodoroSizes.xl),
            child: Column(
              children: [
                Image.network(
                  image,
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
                const SizedBox(height: PomodoroSizes.xl),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w700, height: 1.7),
                ),
                const SizedBox(height: PomodoroSizes.md),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: PomodoroSizes.xl),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
