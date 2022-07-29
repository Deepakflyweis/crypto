import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TrendingTab extends StatefulWidget {
    TrendingTab({super.key});

  @override
  State<TrendingTab> createState() => _TrendingTabState();
}

class _TrendingTabState extends State<TrendingTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
       color: txtfieldclr,
      child: Column(
        children: [
          h1,
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coin",
                style: hintStyleS,
              ),
              
              Text(
                "     Price (USDT)",
                style: hintStyleS,
              ),
              
              Text(
                "24h Change",
                style: hintStyleS,
              ),
            ],
          ),
          h1,
          SizedBox(
            width: 100.w,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Row(
                        children: [
                            CircleAvatar(
                              radius: 2.h,
                              backgroundColor: whiteclr,
                              child: CircleAvatar(
                                radius: 2.h, 
                                 backgroundImage:  AssetImage("assets/images/market.png"),
                                 backgroundColor:  Colors.red,
                              ),
                            ),
                          w2,
                           Text("BTC",style: txtStyleN,),
                            
                          Spacer(),
                           Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1098.15",style: txtStyleN,),
                               const Text("₹ 86,988.35",style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),),
                              ],
                           ),
                           Spacer(),
                           
                           const Text("-0.27%",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),),
                        ],
                      ),
                    
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
