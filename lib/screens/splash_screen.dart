import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:public_chat/main.dart';
import 'package:public_chat/screens/home_screen.dart';
import 'package:public_chat/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Welcome to Public chat'),
      ),
      body: Stack(
        children: [
          Positioned(
              top: mq.height * .15,
              right: mq.width * .25,
              width: mq.width * .5,
              child: Image.asset('assets/images/chat.png')),
          Positioned(
            bottom: mq.height * .15,
            width: mq.width * .9,
            child: const Text(
              "Made in INDIA with ❤️ ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, color: Colors.black54, letterSpacing: .5),
            ),
          ),
        ],
      ),
    );
  }
}
