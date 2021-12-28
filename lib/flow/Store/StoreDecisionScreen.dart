// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_function_declarations_over_variables

import 'package:auto/flow/UserDetail/UserDetailScreen.dart';
import 'package:auto/styles/appColors.dart';
import 'package:auto/widgets/blurryDialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreDecisionScreen extends StatefulWidget {
  const StoreDecisionScreen({Key? key}) : super(key: key);

  @override
  _StoreDecisionScreenState createState() => _StoreDecisionScreenState();
}

class _StoreDecisionScreenState extends State<StoreDecisionScreen> {
  _showDialog(BuildContext context) {
    VoidCallback continueCallBack = () => {
          Navigator.of(context).pop(),
        };
    BlurryDialog alert = BlurryDialog(
        "Apny Store py ja kr dbara try kren",
        "Order Deliver krny k liye apky store ki location lazmi hai",
        continueCallBack);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainPrimaryColor,
        title: Text(
          'Apny store ki location darj kren',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.04),
          Center(
            child: Text(
              'Kia aap abhi store par mojud hain?',
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: height * 0.02,
              ),
            ),
          ),
          SizedBox(height: height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Get.to(UserDetailScreen());
                },
                child: Container(
                  color: AppColors.mainPrimaryColor,
                  width: height * 0.22,
                  height: height * 0.12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Haan,',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: height * 0.022,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Store par mojud hun',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: height * 0.022,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => _showDialog(context),
                child: Container(
                  color: AppColors.mainPrimaryColor,
                  width: height * 0.22,
                  height: height * 0.12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Nahin,',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: height * 0.022,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Store se bahar hun',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: height * 0.022,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
