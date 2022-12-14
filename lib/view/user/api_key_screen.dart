import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/nav_bar.dart';
import 'package:crypto_app/view/user/new_signin.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ApiKeyScreen extends StatelessWidget {
  const ApiKeyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: divclr,
        body: SingleChildScrollView(
          child: Column(
            children: [
              h3,
              Image.asset(
                "assets/images/login_logo.png",
                height: 35.h,
                fit: BoxFit.fill,
              ),
              h3,
              Text(
                "Link API",
                style: txtStyleL,
              ),
              h2,
              Text(
                "Enter your API Key to Continue",
                style: txtStyleG,
              ),
              h3,
              Container(
                width: 90.w,
                height: 7.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: txtfieldclr,
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                    hintText: 'Enter API  Key',
                    hintStyle: hintStyle,
                  ),
                ),
              ),
              h2,
              Container(
                width: 90.w,
                height: 7.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: txtfieldclr,
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                    hintText: 'Enter Secret Key',
                    hintStyle: hintStyle,
                  ),
                ),
              ),
              h2,
              GestureDetector(
                onTap: () {
                  Get.offAll(() => NavBarIndex(0));
                },
                child: Image.asset(
                  "assets/images/connect.png",
                  width: 90.w,
                  fit: BoxFit.fill,
                ),
              ),
              h1,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have API Key",style: txtStyleN,),
                  TextButton(
                    onPressed: () {
                      Get.offAll(() => SignInEmail());
                    },
                    child: Text("Click here",style: txtStyleBtn,))
                ],
              ),
              h2
            ],
          ),
        ),
      ),
    );
  }
}
