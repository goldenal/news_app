

import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fluttertoast/fluttertoast.dart';



Future<void> startLoading(BuildContext context,
    [String message = "Please wait...", bool? isdismissed]) async {
  FocusScope.of(context).requestFocus(FocusNode());
  EasyLoading.show(dismissOnTap: false,status: message,maskType:EasyLoadingMaskType.black );
}

loadingSuccessful(String? message,
    [bool showDialog = false,
      BuildContext? context,
      bool gotoDashBoard = true,
      Function? listener]) {

  EasyLoading.dismiss().then((value) {
    if (message != null) {
        toastSuccess(message);
    }
  }
  );
}


void toastSuccess(String message) {
  Fluttertoast.showToast(
      msg: message == null ? '' : message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      textColor: Colors.white);
}



void showSnackBar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    elevation: 0,
    content: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        decoration: BoxDecoration(
            color: Color(0xffFFF5F5),
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(color: Color(0xffEC575E))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 4.w,
            ),
            Expanded(
                child: Text(
                  msg,
                  style: TextStyle(color: Color(0xff66191D)),
                )),
          ],
        )),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    padding: EdgeInsets.zero,
  );
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}