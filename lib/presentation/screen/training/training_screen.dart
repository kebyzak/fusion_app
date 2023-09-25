import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    final columnWidth = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      appBar: const CustomAppBar(title: 'Тренировки'),
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
                  image: const DecorationImage(
                    image: AssetImage("assets/icons/t1.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Международный турнир",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Text color (black)
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 100,
                width: double.infinity,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/icons/t2.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Записаться на тренировку",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Text color (black)
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 100,
                width: double.infinity,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/icons/t3.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Поиск команды",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Text color (black)
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 100,
                width: double.infinity,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/icons/t4.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Свой турнир",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Text color (black)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
