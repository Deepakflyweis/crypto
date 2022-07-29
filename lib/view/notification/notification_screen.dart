import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: divclr,
        body: SingleChildScrollView(
         padding: EdgeInsets.only(left: 10, right: 10),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
            Arrowback(),
             h2,
             Align(
              alignment: Alignment.centerLeft,
              child: Text("Notifications", style: txtStyleWB,)),
             h3,
             SizedBox(
               width: 95.w,
               child: ListView.builder(
                 shrinkWrap: true,
                 itemCount: 4,
                 itemBuilder: (context, index) {
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      padding: const EdgeInsets.only(left: 8.0),
                       constraints: const BoxConstraints(
                         maxHeight: double.infinity),
                       width: 95.w, 
                       decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: txtfieldclr,
                          ), 
                       child: ListTileTheme(
                          dense: true,
                           horizontalTitleGap:  10,
                           minLeadingWidth: 0,
                         contentPadding: EdgeInsets.all(0),
                         child: ExpansionTile(  
                          //  leading: Icon(Icons.email),
                           title: Text(
                             "You’ve recived a new task",
                             maxLines: 1, 
                              style: hintStyle
                             ),  
                           children: [
                              ListTile( 
                               minLeadingWidth: 10,
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
        ),
      ),
    );
  }
}