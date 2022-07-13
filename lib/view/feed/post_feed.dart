
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart'; 
import 'package:flutter/material.dart'; 
import 'package:sizer/sizer.dart';

class PostFeed extends StatelessWidget {
  const PostFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyWidget(child: Column(
          children: [
            Arrowback(),
            h1,
            Container(
              height: 40.h,
              width: 96.w, 
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 155, 154, 154),
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                 maxLines: null,
                decoration: const InputDecoration(
                  enabledBorder: InputBorder.none, 
                  contentPadding: EdgeInsets.all(10), 
                   hintText: "Share insights and events with friends", 
                ),
              ),
            ),
            h5,
           GestureDetector( 
               child: Image.asset(
                   "assets/images/post.png" ,
                    width: 90.w,
                    fit: BoxFit.fill,
                   ),
            ),
          ],
        )),
      ),
    );
  }
}