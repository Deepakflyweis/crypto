import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
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
              Arrowback(),
              h2,
              SizedBox(
                width: 90.w,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: double.infinity),
                        width: 90.w, 
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: txtfieldclr,
                        ),
                        child:  Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: Color(0xff25DEB0),
                          ),
                          child: ExpansionTile( 
                            title: Text(
                              "How to use this app ? lorem ipsum dolro sit",
                              maxLines: 1,
                              overflow: TextOverflow.fade,
                               style: txtStyleN
                              ), 
                            children: [
                               ListTile( 
                                title: Text('How to use this app ?',style: txtStyleWB,),
                                subtitle: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus faucibus imperdiet urna ut convallis sit a nunc. Ultricies aliquet aenean ornare quis. Amet mauris pretium tortor gravida eros, donec a lacus ac. Auctor facilisi augue fermentum vitae proin lacinia. Auctor dui aliquet nec velit. Cras nunc et nec, lacus cras justo posuere. Eget elementum quis eget mollis.",
                                maxLines: 6,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                color: Color(0xff898282),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                                ),
                                
                                ),
                            ],
                             ),
                        ),
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
