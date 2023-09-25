import 'package:flutter/material.dart';
import 'package:fusion_app/presentation/screen/const.dart';
import 'package:fusion_app/presentation/widgets/bottom_navbar.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF071D20),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: IntroductionScreen(
              globalBackgroundColor: const Color(0xFF071D20),
              scrollPhysics: const BouncingScrollPhysics(),
              pages: [
                PageViewModel(
                  titleWidget: const Text(
                    "FootballFusion - Спортивная платформа для любителей",
                    textAlign: TextAlign.center,
                    style: kOnboardingFirstTextStyle,
                  ),
                  bodyWidget: const Text(""),
                  image: Image.asset(
                    "assets/icons/o1.png",
                    height: 500,
                    width: 500,
                  ),
                ),
                PageViewModel(
                  titleWidget: const Text(
                    "Актуальные новости, результаты матчей, расписание игр, прямые трансляции, тренировки, поиск команды и выгодные предложения",
                    textAlign: TextAlign.center,
                    style: kOnboardingFirstTextStyle,
                  ),
                  bodyWidget: const Text(""),
                  image: Image.asset(
                    "assets/icons/o2.png",
                    height: 500,
                    width: 500,
                  ),
                ),
                PageViewModel(
                  titleWidget: const Text(
                    "Мы ценим вашу конфиденциальность",
                    textAlign: TextAlign.center,
                    style: kOnboardingSecondTextStyle,
                  ),
                  bodyWidget: const Text(
                    "Что бы персонализировать приложение, мы собираем некоторые персональные данные",
                    textAlign: TextAlign.center,
                    style: kOnboardingFirstTextStyle,
                  ),
                  image: Image.asset(
                    "assets/icons/o3.png",
                    height: 500,
                    width: 500,
                  ),
                ),
              ],
              onDone: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavbar()),
                );
              },
              onSkip: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavbar()),
                );
              },
              showSkipButton: true,
              skip: const Text(
                "Пропустить",
                style: kOnboardingSkipDone,
              ),
              next: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              done: const Text(
                "Поехали!",
                style: kOnboardingSkipDone,
              ),
              dotsDecorator: DotsDecorator(
                size: const Size.square(10),
                activeSize: const Size(20, 10),
                color: Colors.white,
                activeColor: const Color(0xFF06F806),
                spacing: const EdgeInsets.symmetric(horizontal: 3),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
