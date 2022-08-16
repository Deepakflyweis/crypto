import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/trade/dialo.dart';
import 'package:crypto_app/view/trade/spot_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MarginScreen extends StatefulWidget {
    MarginScreen({super.key});

  @override
  State<MarginScreen> createState() => _MarginScreenState();
}

class _MarginScreenState extends State<MarginScreen> {
  var _selected ="";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Row(
          children: [
            GestureDetector(
              onTap: () => ShowDialog.displayArrow(context),
              child: Image.asset(
              "assets/images/arrow.png",
              width: 10.w,
            ),),
            Text(
              "RLCUSDT",
              style: txtStyleWB,
            ),
            w2,
            GestureDetector(
              onTap: () => _displayMargin(context),
              child: Image.asset(
                "assets/images/m1.png",
                width: 27.w,
              ),
            ),
            w1,
           GestureDetector(
              onTap: () => _displayCross(context),
            child: Image.asset(
              "assets/images/m2.png",
              width: 20.w,
            ),),
          w2,
            GestureDetector(
              onTap: () {
                _displayDialog(context);
                // filterDialog();
              },
              child: Image.asset(
                "assets/images/candle.png",
                width: 6.w,
              ),
            ),
          ],
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "+14.94%",
                style: txtStyleBtn,
              ),
            )),
        h2,
        Container(
          decoration: const BoxDecoration(
              color: txtfieldclr,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              )),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset("assets/images/tr3.png", width: 44.w),
              w1,
              Image.asset(
                "assets/images/tr1.png",
                width: 44.w,
              ),
            ],
          ),
        ),
      ],
    );
  }

  _displayCross(context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: txtfieldclr,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
        ),
        builder: (BuildContext bc) {
          return Container(
            padding: EdgeInsets.all(20),
             height: MediaQuery.of(context).size.height * 0.2,
            decoration: const BoxDecoration(
            color: txtfieldclr,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              topLeft:  Radius.circular(35),
            )
          ), 
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                     "BTC ",
                       style: txtStyleN,
               ),
               h1,
                Text(
                     "USDT ",
                       style: txtStyleN,
               ), 
            h1,
             Center(
               child: GestureDetector(
                onTap: () => Get. back(),
                 child: Image.asset(
                      "assets/images/cancel.png",
                         height: 6.h,
                         width: 50.w, 
                          fit: BoxFit.fill,
                      ),
               ),
             ),
             h1,
              ],
            ),  
        
        );
      },
    );  
 
  }

  _displayMargin(context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: txtfieldclr,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
        ),
        builder: (BuildContext bc) {
          return Container(
            padding: EdgeInsets.all(25),
             height: MediaQuery.of(context).size.height * 0.33,
              decoration: const BoxDecoration(
              color: txtfieldclr,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft:  Radius.circular(35),
              )
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                     "Limit ",
                       style: txtStyleN,
               ),
               h1,
                Text(
                     "Market ",
                       style: txtStyleN,
               ),
               h1,
               Text(
                     "Stop Limit ",
                       style: txtStyleN,
               ),
               h1,
               Text(
                     "Stop Market ",
                       style: txtStyleN,
               ),
               h1,
               Text(
                     "Hidden ",
                       style: txtStyleN,
               ),
               h1,
             Center(
               child: GestureDetector(
                onTap: () => Get. back(),
                 child: Image.asset(
                      "assets/images/cancel.png",
                         height: 6.h,
                         width: 45.w, 
                          fit: BoxFit.fill,
                      ),
               ),
             )  ,
             h1,
              ],
            ),  
         
        );
      },
    );  
  }

  _displayDialog(context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: txtfieldclr,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
        ),
        builder: (BuildContext bc) {
          return Container(  
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: const BoxDecoration(
            color: txtfieldclr,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              topLeft:  Radius.circular(35),
            )
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row( 
                   children: [
                    Text(
                     "Margin mode ",
                       style: txtStyleN,
                       ),
                        Spacer(),
                       IconButton(onPressed: () => Get.back(),
                        icon: Icon(Icons.close,color: whiteclr,)),
                       ],
                    ),
                     Divider(color: whiteclr,),
                     h1,
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                                  "assets/images/d1.png",  
                                    height: 5.h,
                                   width: 45.w, 
                                  fit: BoxFit.fill,
                           ), 
                          Image.asset(
                               "assets/images/d2.png",
                                 height: 5.h,
                            width: 45.w, 
                                fit: BoxFit.fill,
                           )
                        ],
              ),
              h1,
              Text("This mode change will only apply to the selcted contract",
              style: hintStyleS,maxLines: 2,overflow: TextOverflow.fade,),
              h1,
              Text("What is Cross margin and isolated margin?",
              style: txtStyleN,maxLines: 2,overflow: TextOverflow.fade,),
              h2,
              Center(
                child: Image.asset(
                    "assets/images/d3.png",
                       height: 6.h,
                       width: 75.w, 
                        fit: BoxFit.fill,
                    ),
              )
              ],
            ),  
        );
      },
    );   
  }
}
