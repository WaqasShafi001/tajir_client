// ignore_for_file: prefer_const_constructors

import 'package:auto/flow/onbarding/OnBoarding.dart';
import 'package:auto/styles/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 1,
      ),
    ).then((value) => Get.to(OnBoarding()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Image.asset(
          'assets/tajirWhite.png',
        ),
      ),
    );
  }
}
