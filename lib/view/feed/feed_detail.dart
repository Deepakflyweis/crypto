
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedDetail extends StatelessWidget {
  const FeedDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyWidget(
           child: Column(
          children: [
              Arrowback(),
               
              h2,
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 5),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh egestas bibendum vitae vitae nullam arcu nisl, amet. Non metus magna massa ut. Leo nunc, a libero magna. A lorem sit vel auctor ultrices id. Vel, pharetra enim netus blandit. Eget urna, eget odio turpis rutrum ultricies tellus ultrices maecenas. At duis nibh sem dictumst ipsum, orci lacus neque.",
                    maxLines: 10,
                   style: hintStyle,
                ),
              ) 
          ],
        )),
      ),
    );
  
  }
}