// ignore_for_file: prefer_const_constructors

import 'package:auto/controllers/loginController.dart';
import 'package:auto/styles/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'FullnameScreen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  var findPhoneNumberController = Get.find<LoginController>();
  bool textFieldClicked = false;

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainPrimaryColor,
        title: Text(
          'Toseeqi code darj kren',
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
                  '${findPhoneNumberController.phoneNumbrController.text} par bheja gya code likhen',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.022,
                  ),
                ),
                SizedBox(height: height * 0.015),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                    child: OTPTextField(
                      length: 5,

                      width: MediaQuery.of(context).size.width,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 30,
                      fieldStyle: FieldStyle.underline,
                      // outlineBorderRadius: 15,
                      style: TextStyle(
                        fontSize: height * 0.022,
                      ),
                      onChanged: (pin) {
                        print("Changed: " + pin);
                      },
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                        setState(() {
                          textFieldClicked = true;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                MaterialButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    Get.to(FullnameScreen());
                  },
                  minWidth: width * 0.5,
                  height: height * 0.06,
                  color: textFieldClicked
                      ? AppColors.mainPrimaryColor
                      : AppColors.greyColor,
                  child: Text(
                    'Darj kren',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: height * 0.02,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  'Code Dbara mangvaen',
                  style: TextStyle(
                    color: AppColors.blueColor,
                    fontSize: height * 0.022,
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
