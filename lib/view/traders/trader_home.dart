import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/traders/trader_index.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TraderHome extends StatefulWidget {
  const TraderHome({super.key});

  @override
  State<TraderHome> createState() => _TraderHomeState();
}

class _TraderHomeState extends State<TraderHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: divclr,
         body: SingleChildScrollView(
        child: Column(
         children: [
          h1,
      Row(
        children: [
          Arrowback(),
           Container(
        width: 85.w,
        height: 5.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: txtfieldclr,
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search_rounded,
              color: Color(0xffC4B5B5),
            ),
            // suffixIcon: const Icon(
            //   Icons.drive_file_rename_outline_sharp,
            //   color: Color(0xffC4B5B5),
            // ),
            hintText: ' Search',
            hintStyle: const TextStyle(
              fontSize: 12,
              color: Color(0xffC4B5B5),
            ),
            contentPadding:
            EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
     
        ],
      ), 
      h1,
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
                   color: txtfieldclr,
                   borderRadius: BorderRadius.circular(20)
         ),
         child: Row(
          children: [
            Text("Strategy",style: txtStyleN,),
            Spacer(),
            Text("Win rate",style: txtStyleN,),
            Spacer(),
            Text("Profits",style: txtStyleN,),
          ],
         ), 
      ), 
      SizedBox(
        width: 100.w, 
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(8.0,12,8,0),
              child: InkWell(
                 onTap: () => Get.to(() => TraderIndexScreen()),
                child: Container( 
                 width: 98.w,
                 height: 12.h,
                 decoration: BoxDecoration(
                   color: txtfieldclr,
                   borderRadius: BorderRadius.circular(20)
                 ),
                 child: Row( 
                   children: [
                 //     w1,
                 //     CircleAvatar(
                 //     radius: 3.h,
                 //     backgroundImage: const AssetImage(
                 //       "assets/images/proimg.png",
                 //     ),
                 // ),
                 // Text("People",style: txtStyleWB,), 
                 
                 Column( 
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                    h1,
                   Row( 
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     w1,
                     CircleAvatar(
                     radius: 2.h,
                     backgroundImage: const AssetImage(
                       "assets/images/proimg.png",
                     ),
                 ),
                 w1,
                 Text("People",style: txtStyleWB,), 
               ]
                ),
                  
               Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   w2,
                   Icon(Icons.person,color: whiteclr,),
                         // Image.asset("assets/images/aw.png",width: 5.w,),
                   Text(" 150 ",style: hintStyleS,),
                       ],
                     ),
                   ],
                 ),
                 w2,
                  Image.asset(
                  "assets/images/line.png",
                   width: 25.w,
                    fit: BoxFit.fill,
                   ),
              
                 Spacer(),
                 Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text("500% ",style: txtStyleBtn,),
                       Text("Vol 250k ",style: txtStyleN,),
                     ],
                   ), 
                 // Icon(
                 //   Icons.star_border,color: whiteclr,
                 // )
                    ],
                   ),
                   
                  //  InkWell(
                  //   onTap: () => Get.to(() => TraderIndexScreen()),
                  //    child: Container(
                  //     height: 10.h,
                  //     width: 90.w,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(16),
                  //       color: Color(0xff1b1d29),
                  //     ),
                  //      child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //          Image.asset(
                  //             "assets/images/line.png",
                  //             width: 25.w,
                  //             fit: BoxFit.fill,
                  //           ),
                
                  //       Column(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Text("+950.7%",style: txtStyleBtn,),
                  //           Text("Vol \$68.8m",style: hintStyleS,),
                  //         ],
                  //       ), 
                  //     ]),
                  //     ),
                  //  ),
                  //   h1
                  
                ),
              ));
          },
        ),
      )
    ]))));
  }
}
