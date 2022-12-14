import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/market/market_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MarketfavScreen extends StatefulWidget {
  const MarketfavScreen({super.key});

  @override
  State<MarketfavScreen> createState() => _MarketfavScreenState();
}

class _MarketfavScreenState extends State<MarketfavScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: txtfieldclr,
      ),
      child: Column(
        children: [
          Image.asset(
              "assets/images/usdt.png", 
              width: 95.w,
              height: 4.h,
              fit: BoxFit.fill,
           ),
            h1,  
         
          // Padding(
          //   padding: const EdgeInsets.only(left:8.0,right: 8),
          //   child: Row(
          //     children: [
          //       ElevatedButton(
          //           style: ElevatedButton.styleFrom(backgroundColor: divclr),
          //           onPressed: () {},
          //           child: Text(
          //             "Spot",
          //             style: txtStyleN,
          //           )),
          //       w2,
          //       Text(
          //         "Futures",
          //         style: hintStyleS,
          //       ),
          //       Spacer(),
          //       const Icon(
          //         Icons.edit,
          //         color: whiteclr,
          //       )
          //     ],
          //   ),
          // ), 
          Image.asset(
              "assets/images/name.png", 
              width: 95.w,
              height: 2.5.h,
              fit: BoxFit.fill,
            ), 
         SizedBox(height: 5,),
          Container(
            width: 100.w,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => CryptoDetails());
                  },
                  child: Row(
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
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
