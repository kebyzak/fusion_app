import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    final columnWidth = MediaQuery.of(context).size.width * 0.9;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF162E30),
          title: const Text(
            "Турнир",
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
                  height: 80,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF1F3F41),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "NFL CUP ZHASTAR, Лето",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month_rounded,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  "15.09.2023 - 15.09.2023",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.people_outline_rounded,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  "Команды: 26",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
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
