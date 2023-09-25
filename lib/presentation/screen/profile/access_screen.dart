import 'package:flutter/material.dart';

class AccessScreen extends StatefulWidget {
  const AccessScreen({Key? key}) : super(key: key);

  @override
  State<AccessScreen> createState() => _AccessScreenState();
}

class _AccessScreenState extends State<AccessScreen> {
  @override
  Widget build(BuildContext context) {
    final columnWidth = MediaQuery.of(context).size.width * 0.75;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF162E30),
        title: const Text(
          "Профиль",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color(0xFF162E30),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: columnWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Для регистрации на мероприятия необходимо авторизоваться",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 12),
              const Divider(),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9), // <-- Radius
                    ),
                  ),
                  child: const Text(
                    "Войти",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Зарегистрироваться",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
