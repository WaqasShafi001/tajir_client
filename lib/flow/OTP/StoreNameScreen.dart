// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto/controllers/loginController.dart';
import 'package:auto/flow/OTP/OTPScreen.dart';
import 'package:auto/flow/Store/StoreDecisionScreen.dart';
import 'package:auto/styles/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StorenameScreen extends StatefulWidget {
  const StorenameScreen({Key? key}) : super(key: key);

  @override
  State<StorenameScreen> createState() => _StorenameScreenState();
}

class _StorenameScreenState extends State<StorenameScreen> {
  var putPhoneNumbrController = Get.put(LoginController());
  bool textFieldClicked = false;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainPrimaryColor,
        centerTitle: true,
        title: Text(
          'اپنے اسٹور کا نام درج کریں۔',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: height * 0.5,
            width: width,
            color: AppColors.whiteColor,
            child: Column(
              children: [
                SizedBox(height: height * 0.05),
                Text(
                  'اپنے اسٹور کا نام درج کریں۔',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.022,
                  ),
                ),
                SizedBox(height: height * 0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.store,
                      color: AppColors.mainPrimaryColor,
                    ),
                    SizedBox(width: width * 0.01),
                    SizedBox(width: width * 0.015),
                    Container(
                      width: width * 0.7,
                      child: TextField(
                        autofocus: false,
                        controller: putPhoneNumbrController.storeNameController,
                        onTap: () {
                          setState(() {
                            textFieldClicked = true;
                          });
                        },
                        style: TextStyle(
                          color: AppColors.mainPrimaryColor,
                          fontSize: height * 0.022,
                        ),
                        keyboardType: TextInputType.name,
                        showCursor: true,
                        cursorColor: AppColors.mainPrimaryColor,
                        decoration: InputDecoration(
                          labelStyle:
                              TextStyle(color: AppColors.mainPrimaryColor),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.mainPrimaryColor,
                                width: 1.0,
                                style: BorderStyle.none),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.mainPrimaryColor,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.mainPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.05),
                MaterialButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    Get.to(StoreDecisionScreen());
                  },
                  minWidth: width * 0.85,
                  height: height * 0.06,
                  color: textFieldClicked
                      ? AppColors.mainPrimaryColor
                      : AppColors.greyColor,
                  child: Text(
                    'درج کریں',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: height * 0.02,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
