import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TraderPositionScreen extends StatelessWidget {
  const TraderPositionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: divclr,              
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8.0,8,8,0),
            child: Container(
              width: 85.w,
              height: 7.h,
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: txtfieldclr
              ),
              child: Row(
                children: [
                  w1,
                  const CircleAvatar(
                      radius: 22,
                      backgroundColor: greyclr,
                      child: CircleAvatar(
                        radius: 18, 
                         backgroundImage:  AssetImage("assets/images/coin.png"),
                         
                      ),
                    ),
                  w2,
                   Text("BTC / USDT",style: txtStyleWB,),
                  w2,
                    Text("  Long",style: txtStyleBtn,),

                    
                  Spacer(),
                  Text("+9.35%",
                    style: txtStyleBtn ),


                   
                ],
              ),
            ),
          );
        },
      )
            ,
    );
  }
}