import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/user/api_key_screen.dart';
import 'package:crypto_app/view/user/new_signin.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyWidget(
          child: SingleChildScrollView(
            child: Column(
              children: [                 
                h3,
                Image.asset(
                    "assets/images/login_logo.png" ,
                        height: 35.h, 
                         fit: BoxFit.fill,
                 ),
                 h5,
                 Text("Sign in",style: txtStyleL,),
                 h2,
                 Text("Choose an account to sign in",style: txtStyleG,),
                 h3,
                 GestureDetector(
                  onTap: () => Get.to(() => ApiKeyScreen()),
                  child: Image.asset(
                    "assets/images/sa.png" ,
                        width: 90.w,
                       fit: BoxFit.fill,
                 ),),
                 h2,
                 GestureDetector(
                  onTap: () => Get.to(() => ApiKeyScreen()),
                   child: Image.asset(
                      "assets/images/sg.png" ,
                          width: 90.w,
                         fit: BoxFit.fill,
                   ),
                 ),
                 h2,
                  GestureDetector(
                  onTap: () => Get.to(() => ApiKeyScreen()),
                  child:  Image.asset(
                    "assets/images/sf.png" ,
                        width: 90.w,
                       fit: BoxFit.fill,
                 ),),
                 h2,
                  GestureDetector(
                  onTap: () => Get.to(() => SignInEmail()),
                  child: Image.asset(
                    "assets/images/sgm.png" ,
                        width: 90.w,
                       fit: BoxFit.fill,
                 ),), 
                 h2,
                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
