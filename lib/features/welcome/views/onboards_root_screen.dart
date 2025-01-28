import 'package:flutter/material.dart';
import 'package:matule_app/features/welcome/views/onboard_one_screen.dart';
import 'package:matule_app/features/welcome/views/onboard_three_screen.dart';
import 'package:matule_app/features/welcome/views/onboard_two_screen.dart';
import 'package:matule_app/widgets/my_button.dart';

class OnboardsRootScreen extends StatefulWidget {
  const OnboardsRootScreen({super.key});

  @override
  State<OnboardsRootScreen> createState() => _OnboardsRootScreenState();
}

class _OnboardsRootScreenState extends State<OnboardsRootScreen> {

  List<Widget> onboardScreens = [
    OnboardOneScreen(),
    OnboardTwoScreen(),
    OnboardThreeScreen(),
  ];

  int _currentIndex = 0;

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount: onboardScreens.length,
              itemBuilder: (context, index) {
                return onboardScreens[index];
              },
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 170),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(onboardScreens.length, (index) {
                      return AnimatedContainer(
                        margin: EdgeInsets.all(6),
                        width: _currentIndex == index ? 48 : 38,
                        height: 6,
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: _currentIndex == index ? Colors.white : Color(0xff2B6B8B),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: MyButton(
                      title: _currentIndex == 0 ? 'Начать' : 'Далее',
                      background: Theme.of(context).colorScheme.surface,
                      foreground: Theme.of(context).colorScheme.onSurface,
                      onPressed: () {
                        if(_currentIndex < 2) {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        } else {
                          Navigator.of(context).pushNamed('/login');
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

