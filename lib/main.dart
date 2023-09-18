import 'package:flutter/material.dart';
import 'package:fusion_app/presentation/screen/feed/feed_screen.dart';
import 'package:fusion_app/presentation/screen/match/match_screen.dart';
import 'package:fusion_app/presentation/screen/profile/profile_screen.dart';
import 'package:fusion_app/presentation/screen/table/table_screen.dart';
import 'package:fusion_app/presentation/widgets/bottom_navbar.dart';
import 'package:fusion_app/presentation/screen/onboarding/onboarding_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Jost'),
      debugShowCheckedModeBanner: false,
      home: const BottomNavbar(),
      initialRoute: 'onboarding',
      routes: {
        'onboarding': (context) => const OnBoardingScreen(),
        'feed': (context) => const FeedScreen(),
        'table': (context) => const TableScreen(),
        'match': (context) => const MatchScreen(),
        'profile': (context) => const ProfileScreen(),
      },
    );
  }
}
