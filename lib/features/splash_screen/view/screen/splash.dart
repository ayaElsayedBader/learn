import 'package:flutter/material.dart';
import 'package:wen/core/extation/extation.dart';

import '../../../../core/style/image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // تأخير لمدة 5 ثوانٍ قبل الانتقال إلى الشاشة التالية
    Future.delayed(Duration(seconds: 5)).then((_) {
      if (mounted) {
        // استدعاء التنقل بعد اكتمال البناء
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.pushWidget(
            push: const Scaffold(
              backgroundColor: Colors.teal,
            ),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset(ImageApp.logo),
          ),
          SizedBox(
            height: 50,
          ),
          const CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 80,
          ),
        ],
      ),
    );
  }
}
