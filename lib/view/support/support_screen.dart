import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/faq/faq_screen.dart';
import 'package:crypto_app/view/support/chat_screen.dart'; 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: divclr,
        body: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Stack(
               children: [
                 Image.asset(
                   "assets/images/needhelp.png",
                   height: 40.h,
                   width: double.infinity,
                   fit: BoxFit.fill,
                 ),
                 Positioned(
                   top: 5,
                   left: 5,
                   child: IconButton(
                       onPressed: () => Get.back(),
                       icon: const Icon(
                         Icons.arrow_back,
                         color: whiteclr,
                         size: 30,
                       )),
                 ),
               ],
             ),
             h2,
             Text("Tell us how can we help 👋", style: txtStyleWB),
              
             SizedBox(
               width: 80.w,
               child: Text(
                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                   textAlign: TextAlign.center,
                   maxLines: 2,
                   style: txtStyleWS),
             ),
             h2,
             GestureDetector(
               onTap: () => Get.to(() => ChatScreen()),
               child: Image.asset(
                 "assets/images/chat.png",
                 width: 95.w,
                 fit: BoxFit.fill,
               ),
             ),
             h2,
             GestureDetector(
               onTap: () => Get.to(() => FAQScreen()),
               child: Image.asset(
                 "assets/images/faq.png",
                 width: 95.w,
                 fit: BoxFit.fill,
               ),
             ),
             h2,
             GestureDetector(
               child: Image.asset(
                 "assets/images/email.png",
                 width: 95.w,
                 fit: BoxFit.fill,
               ),
             ),
              
           ],
         ),
        ),
      ),
    );
  }
}
