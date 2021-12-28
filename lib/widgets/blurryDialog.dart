// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:auto/styles/appColors.dart';
import 'package:flutter/material.dart';

class BlurryDialog extends StatelessWidget {
  String title;
  String content;
  VoidCallback continueCallBack;

  BlurryDialog(this.title, this.content, this.continueCallBack);
  TextStyle textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: AlertDialog(
          title: Text(
            title,
            style: textStyle,
          ),
          content: Text(
            content,
            style: textStyle,
          ),
          actions: <Widget>[
            MaterialButton(
              color: AppColors.mainPrimaryColor,
              child: Text(
                "Theek hai",
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
              onPressed: () {
                continueCallBack();
              },
            ),
          ],
        ));
  }
}
