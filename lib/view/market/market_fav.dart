import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/market/market_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: txtfieldclr,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8),
            child: Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: divclr),
                    onPressed: () {},
                    child: Text(
                      "Spot",
                      style: txtStyleN,
                    )),
                w2,
                Text(
                  "Futures",
                  style: hintStyleS,
                ),
                Spacer(),
                const Icon(
                  Icons.scale_rounded,
                  color: whiteclr,
                )
              ],
            ),
          ),
          h2,
          Container(
            width: 98.w,
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
                      w2,
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
