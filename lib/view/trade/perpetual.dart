import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
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
              Image.asset("assets/images/arrow.png", width: 10.w,),
              Text("RLCUSDT",style: txtStyleWB,),
              w1,
              Text("+14.94%",style: txtStyleBtn,),
              Spacer(), 
               GestureDetector(
                 onTap: () => _displayCross(),
                child:Image.asset("assets/images/m2.png", width: 20.w,), 
                ),
                 w2,
              GestureDetector(
                 onTap: () => _displayDialog(),
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
                   Image.asset("assets/images/tr.png", width: 44.w ), 
                   w2,
                   Image.asset("assets/images/tr1.png", width: 44.w,), 
                   ],
                   ),  
              ), 
      ],
    );
  }

  _displayDialog()  {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: SimpleDialog( 
            backgroundColor: divclr,
            title: Column(
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
                                   width: 30.w, 
                                  fit: BoxFit.fill,
                           ), 
                          Image.asset(
                               "assets/images/d2.png",
                                 height: 5.h,
                            width: 30.w, 
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
              Image.asset(
                  "assets/images/d3.png",
                     height: 6.h,
                     width: 40.w, 
                      fit: BoxFit.fill,
                  )
              ],
            ), 
          ),
        );
      },
    );  
  }
  _displayCross()  {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 30.w,
          child: SimpleDialog( 
          backgroundColor: txtfieldclr,
            title:  Column(
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
                         width: 40.w, 
                          fit: BoxFit.fill,
                      ),
               ),
             )  ,
             h1,
              ],
            ),  
          ),
        );
      },
    );  
 
  }

}