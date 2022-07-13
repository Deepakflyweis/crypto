import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyWidget(
          child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: whiteclr,
                      size: 30,
                    )),
              ),
              h2,
              SizedBox(
                width: 90.w,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 90.w,
                      height: 6.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: txtfieldclr,
                      ),
                      child:  ExpansionTile(
                        title: Text(
                          "How to use this app ? lorem ipsum dolro sit",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                           style: txtStyleN,),
                      
                        trailing: IconButton(
                          onPressed:  () {
                            
                          }, 
                          icon: Icon(Icons.arrow_back_ios,color: whiteclr,)),
                         ),
                    );
                  },
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
