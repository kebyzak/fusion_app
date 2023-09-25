import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fusion_app/presentation/bloc/table/tournaments/tournaments_bloc.dart';
import 'package:fusion_app/presentation/screen/feed/feed_screen.dart';
import 'package:fusion_app/presentation/screen/table/tournaments_screen.dart';
import 'package:fusion_app/presentation/screen/training/training_screen.dart';
import 'package:fusion_app/presentation/screen/profile/profile_screen.dart';
import 'package:fusion_app/presentation/widgets/bottom_navbar.dart';
import 'package:fusion_app/presentation/screen/onboarding/onboarding_screen.dart';

void main() => runApp(
  BlocProvider(
    create: (context) => TournamentsBloc(),
    child: const MyApp(),
  ),
);

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
        'tournaments': (context) => const TournamentsScreen(),
        'training': (context) => const TrainingScreen(),
        'profile': (context) => const ProfileScreen(),
      },
    );
  }
}
