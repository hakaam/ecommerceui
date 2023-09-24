import 'package:ecommerceui/Screens/home_screen.dart';
import 'package:ecommerceui/Screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
        bodyTextStyle: TextStyle(fontSize: 19),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Shop Now',
          body:
              ' a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
          image: Image.asset(
            'images/splash1.png',
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Big Discount',
          body:
              'a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
          image: Image.asset(
            'images/splash2.png',
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: 'Free Delivery',
            body:
                'a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
            image: Image.asset(
              'images/splash3.png',
              width: 200,
            ),
            decoration: pageDecoration,
            footer: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavigationScreen()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: Color(0xFFDB3022),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text(
                  'Lets Shop ',
                  style: TextStyle(fontSize: 18,
                    color: Colors.white
                  ),
                ),
              ),
            )),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        'Back',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFDB3022)),
      ),
      next: Text(
        'Next',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFDB3022)),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: Size.square(20),
          activeSize: Size(20, 10),
          activeColor: Color(0xFFDB3022),
          color: Colors.black26,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
