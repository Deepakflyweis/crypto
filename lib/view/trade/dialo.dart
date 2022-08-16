
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShowDialog{
  
   static Future<void> displayArrow(parentContext) {
    return showDialog(
      context: parentContext,
      barrierDismissible: true,
      builder: (ctx) => AlertDialog(
      backgroundColor: divclr,
      title: Column(
        children: [
          Image.asset(
              "assets/images/usdt.png", 
              width: 95.w,
              height: 4.h,
              fit: BoxFit.fill,
           ),
            h1,  
          Image.asset(
              "assets/images/name.png", 
              width: 95.w,
              height: 2.5.h,
              fit: BoxFit.fill,
            ), 
         SizedBox(height: 5,),
          
        Row(
                  children: [
                   w1,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matic/USDT",
                          style: txtStyleN,
                        ),
                        Text(
                          "Vol 180.77M",
                          style: hintStyleS,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " 0.45",
                          style: TextStyle(
                            color: Color(0xffFF0A0A),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("\$ 0.4580", style: hintStyleS),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFF0A0A),
                        ),
                        onPressed: () {},
                        child: Text(
                          "-9.75%",
                          style: txtStyleN,
                        )),
                        w1,
                  ],
                ),
        Row(
                  children: [
                   w1,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matic/USDT",
                          style: txtStyleN,
                        ),
                        Text(
                          "Vol 180.77M",
                          style: hintStyleS,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " 0.45",
                          style: TextStyle(
                            color: Color(0xffFF0A0A),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("\$ 0.4580", style: hintStyleS),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFF0A0A),
                        ),
                        onPressed: () {},
                        child: Text(
                          "-9.75%",
                          style: txtStyleN,
                        )),
                        w1,
                  ],
                ),
        Row(
                  children: [
                   w1,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matic/USDT",
                          style: txtStyleN,
                        ),
                        Text(
                          "Vol 180.77M",
                          style: hintStyleS,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " 0.45",
                          style: TextStyle(
                            color: Color(0xffFF0A0A),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("\$ 0.4580", style: hintStyleS),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFF0A0A),
                        ),
                        onPressed: () {},
                        child: Text(
                          "-9.75%",
                          style: txtStyleN,
                        )),
                        w1,
                  ],
                ),
        Row(
                  children: [
                   w1,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matic/USDT",
                          style: txtStyleN,
                        ),
                        Text(
                          "Vol 180.77M",
                          style: hintStyleS,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " 0.45",
                          style: TextStyle(
                            color: Color(0xffFF0A0A),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("\$ 0.4580", style: hintStyleS),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFF0A0A),
                        ),
                        onPressed: () {},
                        child: Text(
                          "-9.75%",
                          style: txtStyleN,
                        )),
                        w1,
                  ],
                ),
        Row(
                  children: [
                   w1,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matic/USDT",
                          style: txtStyleN,
                        ),
                        Text(
                          "Vol 180.77M",
                          style: hintStyleS,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " 0.45",
                          style: TextStyle(
                            color: Color(0xffFF0A0A),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("\$ 0.4580", style: hintStyleS),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFF0A0A),
                        ),
                        onPressed: () {},
                        child: Text(
                          "-9.75%",
                          style: txtStyleN,
                        )),
                        w1,
                  ],
                ),
        Row(
                  children: [
                   w1,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Matic/USDT",
                          style: txtStyleN,
                        ),
                        Text(
                          "Vol 180.77M",
                          style: hintStyleS,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          " 0.45",
                          style: TextStyle(
                            color: Color(0xffFF0A0A),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("\$ 0.4580", style: hintStyleS),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFF0A0A),
                        ),
                        onPressed: () {},
                        child: Text(
                          "-9.75%",
                          style: txtStyleN,
                        )),
                        w1,
                  ],
                ),
                        
          
         ],
      ), 
    ),);
  }
}