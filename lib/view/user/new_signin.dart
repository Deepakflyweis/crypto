
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
 

class SignInEmail extends StatelessWidget {
  const SignInEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff121420),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10, 10, 8, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h2,
                Text(
                  "Log In",
                  style: txtStyleL,
                ),
              h3,
              Text("Email",style: hintStyleS,),
              Container(
                  width: 90.w,
                  height: 7.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: txtfieldclr,
                  ),
                  child: TextFormField( 
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: 'Email address',
                      hintStyle: hintStyle,
                    ),
                  ),
                ),

              h3,
              Text("Password",style: hintStyleS,),
              Container(
                  width: 90.w,
                  height: 7.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: txtfieldclr,
                  ),
                  child: TextFormField( 
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: hintStyle,
                      suffixIcon: Icon(Icons.visibility_off,color: whiteclr,)
                    ),
                  ),
                ),

                h3,
                InkWell(
                  onTap: () {
                     Get.offAll(() => NavBarIndex(0));
                  },
                  child: Container(
                  width: 90.w,
                  height: 7.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: txtfieldclr,
                  ),
                  child: Text("Log In",style: txtStyleN,),
                 ),
                ),
                h2,
                ],
          ),
        ),
      ),
    );
  }
}