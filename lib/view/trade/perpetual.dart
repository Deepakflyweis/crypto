import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/trade/dialo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PerpetualScreen extends StatefulWidget {
    PerpetualScreen({super.key});

  @override
  State<PerpetualScreen> createState() => _PerpetualScreenState();
}

class _PerpetualScreenState extends State<PerpetualScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
            Row(
            children: [
              GestureDetector(
              onTap: () => ShowDialog.displayArrow(context),
              child: Image.asset("assets/images/arrow.png", width: 10.w,),),
              
              Text("RLCUSDT",style: txtStyleWB,),
              w1,
              Text("+14.94%",style: txtStyleBtn,),
              Spacer(), 
               GestureDetector(
                 onTap: () => _displayCross(context),
                child:Image.asset("assets/images/m2.png", width: 20.w,), 
                ),
                 w2,
              GestureDetector(
                 onTap: () => _displayDialog(context),
                child: Image.asset("assets/images/candle.png", width: 8.w,)), 
               ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:40.0),
                  child:  Text("Pertpetual",style: txtStyleN,),
                )),
              
              h2,
              Container(
                decoration: const BoxDecoration(
                  color: txtfieldclr,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  )
                ),
              padding: EdgeInsets.all(10), 
                child: Row(
                  children: [
                   Image.asset("assets/images/tr3.png", width: 44.w ), 
                   w2,
                   Image.asset("assets/images/tr1.png", width: 44.w,), 
                   ],
                   ),  
              ), 
      ],
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
            padding: EdgeInsets.only(left: 5),
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

  _displayCross(context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: txtfieldclr,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
        ),
        builder: (BuildContext bc) {
          return Container(
            padding: EdgeInsets.only(left: 8,top: 8),
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

}