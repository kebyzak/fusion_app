import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    final columnWidth = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF162E30),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "FOOTBALFUSION",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              'MINIFOOTBALL',
              style: TextStyle(
                fontSize: 8,
                color: Colors.white,
              ),
            ),
          ],
        ),
        leading: IconButton(
          iconSize: 30,
          icon: Image.asset("assets/icons/splash.png"),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            iconSize: 30,
            icon: const Icon(Icons.notifications_none_rounded),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xFF162E30),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: columnWidth),
          child: Column(
            children: [
              const SizedBox(height: 12),
              const Text(
                "Последние матчи",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child:
                        Container(), // Empty container to push text to the right
                  ),
                  const Text(
                    "14 сентября 2023",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                height: 150,
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 50,
                      top: 30,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/icons/altair.png"),
                      ),
                    ),
                    Positioned(
                      right: 50,
                      top: 30,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/icons/analog.png"),
                      ),
                    ),
                    const Positioned.fill(
                      top: 20,
                      child: Center(
                        child: Text(
                          "2 - 1",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Новости",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 150,
                    width: columnWidth * 0.5,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(columnWidth * 0.05),
                      child: Image.asset(
                        "assets/icons/maqtaral.png",
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Flexible(
                    child: SizedBox(
                      height: 150,
                      width: columnWidth * 0.5,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "МФК Мактарал обьявляет  о наборе в команду",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "15 июля 2023",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
