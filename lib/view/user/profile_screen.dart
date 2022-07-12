import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
          MyWidget(
              child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              Text("Kiki Minaj", style: txtStyleWB),
              h3,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Chats", style: txtStyleWB),
                      Text("5", style: txtStyleWS),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Followers", style: txtStyleWB),
                      Text("5", style: txtStyleWS),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Copying", style: txtStyleWB),
                      Text("5", style: txtStyleWS),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40.h),
               
            GestureDetector( 
              onTap: () {
                
              },
                   child: Image.asset(
                      "assets/images/lgout.png" ,
                          width: 30.w,
                          height: 6.5.h,
                         fit: BoxFit.fill,
                   ),
                 ),
               
            ],
          )),
          Positioned(
            top: -25,
            left: -5,
            right: -5,
            child: Image.asset(
              "assets/images/pro.png",
              height: 18.h,
              width: 75.w,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top: 8,
              left: 8,
              child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.arrow_back,
                    color: whiteclr,
                    size: 30,
                  ))),
          Positioned(
              top: 7.h,
              left: 35.w,
              child: CircleAvatar(
                radius: 8.h,
                backgroundImage: AssetImage(
                  "assets/images/proimg.png",
                ),
              ))
        ]),
      ),
    );
  }
}
