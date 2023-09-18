import 'package:flutter/material.dart';
import '../screen/feed/feed_screen.dart';
import '../screen/match/match_screen.dart';
import '../screen/profile/profile_screen.dart';
import '../screen/table/table_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;

  final screens = [
    const FeedScreen(),
    const TableScreen(),
    const MatchScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_rounded),
            label: 'Лента',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_rounded),
            label: 'Таблица',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer_rounded),
            label: 'Тренировки',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Профиль',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: const Color(0xFF162E30),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFF6E7272),
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
