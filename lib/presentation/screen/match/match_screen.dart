import 'package:flutter/material.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    final columnWidth = MediaQuery.of(context).size.width * 0.9;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF162E30),
          title: const Text(
            "Тренировки",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: const Color(0xFF162E30),
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: columnWidth),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    image: Image.asset("assets/icons/t1.png"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
