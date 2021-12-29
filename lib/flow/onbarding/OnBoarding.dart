// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto/flow/loginPage/loginPage.dart';
import 'package:auto/styles/appColors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _current = 0;
  List listdot = [1, 2, 3];
  PageController pageController = PageController();
  List<String?> sliderImages = [
    'assets/t1.png',
    'assets/t2.png',
    'assets/tajirGreen.png',
  ];
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.mainPrimaryColor,
      body: Container(
        height: height,
        width: width,
        color: AppColors.mainPrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                width: width,
                height: height * 0.5,
                ////////////////////////// SLIDER IMAGES FOR HOMEPAGE /////////////////
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 3,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                  items: <Widget>[
                    for (var i = 0; i < sliderImages.length; i++)
                      Builder(
                        builder: (context) => Container(
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset(
                                  sliderImages[i]!,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: sliderImages.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => pageController.animateToPage(entry.key,
                      curve: Curves.easeIn,
                      duration: Duration(milliseconds: 500)),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    width: 10.0,
                    height: _current == entry.key ? 10.0 : 4,
                    margin:
                        EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == entry.key
                            ? AppColors.whiteColor
                            : Colors.white70),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: height * 0.02),
            Container(
              height: height * 0.14,
              width: width,
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                    child: MaterialButton(
                      elevation: 1,
                      height: height * 0.06,
                      minWidth: width,
                      onPressed: () {
                        Get.to(LoginPagePhNumbr());
                      },
                      color: AppColors.whiteColor,
                      child: Text(
                        'درخواست دیں',
                        style: TextStyle(
                          fontSize: height * 0.022,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                    child: SizedBox(
                      height: height * 0.06,
                      width: width,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(LoginPagePhNumbr());
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              width: 2.0, color: AppColors.whiteColor),
                          fixedSize: Size.fromWidth(width),
                        ),
                        child: Text(
                          'لاگ ان کریں',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: height * 0.022,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
