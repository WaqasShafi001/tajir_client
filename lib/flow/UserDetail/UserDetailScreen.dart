// ignore_for_file: prefer_const_constructors

import 'package:auto/controllers/loginController.dart';
import 'package:auto/styles/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({Key? key}) : super(key: key);

  @override
  _UserDetailScreenState createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  var findPhoneNumberController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  width: constraints.maxWidth,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.02),
                      Image.asset(
                        'assets/tajirWhite.png',
                        width: width * 0.4,
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.16,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                                height: height * 0.1,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          3, 3), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          -3, -3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'جیسے ہی آپ کے علاقے میں سروس شروع ہوگی ہم آپ سے رابطہ کریں گے۔',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: height * 0.02,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: width * 0.05,
                              child: CircleAvatar(
                                  backgroundColor: AppColors.mainPrimaryColor,
                                  child: Icon(
                                    Icons.priority_high,
                                    color: AppColors.whiteColor,
                                  )),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.25,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                                height: height * 0.25,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          3, 3), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          -3, -3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(height: height * 0.02),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            findPhoneNumberController
                                                .nameController.text,
                                            style: TextStyle(
                                              color: AppColors.mainPrimaryColor,
                                              fontSize: height * 0.022,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'نام',
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: height * 0.022,
                                                ),
                                              ),
                                              Icon(
                                                Icons.person,
                                                color:
                                                    AppColors.mainPrimaryColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '+92 ${findPhoneNumberController.phoneNumbrController.text}',
                                            style: TextStyle(
                                              color: AppColors.mainPrimaryColor,
                                              fontSize: height * 0.022,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'موبائل نمبر',
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: height * 0.022,
                                                ),
                                              ),
                                              Icon(
                                                Icons.mobile_screen_share,
                                                color:
                                                    AppColors.mainPrimaryColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: height * 0.02),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            findPhoneNumberController
                                                .storeNameController.text,
                                            style: TextStyle(
                                              color: AppColors.mainPrimaryColor,
                                              fontSize: height * 0.022,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'دکان کا نام',
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: height * 0.022,
                                                ),
                                              ),
                                              Icon(
                                                Icons.store,
                                                color:
                                                    AppColors.mainPrimaryColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: width * 0.05,
                              child: CircleAvatar(
                                  backgroundColor: AppColors.mainPrimaryColor,
                                  child: Icon(
                                    Icons.person,
                                    color: AppColors.whiteColor,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: constraints.maxWidth,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.01, vertical: height * 0.01),
                        child: MaterialButton(
                          elevation: 1,
                          height: height * 0.06,
                          minWidth: width,
                          onPressed: () {},
                          color: AppColors.mainPrimaryColor,
                          child: Text(
                            'اسٹور کا مقام تبدیل کریں',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: height * 0.022,
                            ),
                          ),
                        ),
                      ),
                    ],
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
