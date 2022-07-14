import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DepositDetails extends StatelessWidget {
  const DepositDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: MyWidget(
            child: SingleChildScrollView( 
             child: Column(
              children: [
      const Arrowback(),
      h2,
      Container(
        width: 90.w,
        height: 5.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: txtfieldclr,
        ),
        child: Row(
          children: [
          w1,
          Image.asset("assets/images/tt.png",height: 2.h,),
          w2,
          Text("USDT", style: txtStyleWB,),
          Spacer(),
          IconButton(onPressed: () {
            
          },
           icon: Icon(Icons.arrow_forward_ios,color: whiteclr,))
        ]), 
      ),
      h2,
      Container(
        width: 90.w,
        height: 12.h,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: txtfieldclr,
        ),
        child: Column(
          children: [ 
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Deposit network",style: hintStyle,)),
            h1,
            Container(
              width: 75.w,
              height: 5.h,
              padding: EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: divclr,
              ),
              child: Row(
                children: [ 
                Text("USDT-TRC20", style: txtStyleWB,),
                Spacer(),
                IconButton(
                  onPressed: () {
                  
                },
                 icon: Icon(Icons.arrow_drop_down,color: whiteclr,))
              ]),
            ),
          ],
        ), 
      ),
      h2,
      Image.asset(
         "assets/images/q.png",
          height: 40.h,
          width: 90.w,
           fit: BoxFit.fill,
      ),
      h2,
      Image.asset(
         "assets/images/min.png",
          height: 28.h,
          width: 90.w,
           fit: BoxFit.fill,
    ),

    ],
    ),
    )),
    ));
  }
}
