import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/market/market_fav.dart';
import 'package:crypto_app/view/market/orderbook_screen.dart';
import 'package:crypto_app/view/traders/trader_overview.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
 
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CryptoDetails extends StatefulWidget {
  const CryptoDetails({super.key});

  @override
  State<CryptoDetails> createState() => _CryptoDetailsState();
}

class _CryptoDetailsState extends State<CryptoDetails> with SingleTickerProviderStateMixin {

late TabController _marketController; 

  @override
  void initState() {
    _marketController = TabController(length: 3,vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _marketController.dispose();
    super.dispose(); 
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyWidget(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: whiteclr,
                        size: 25,
                      )),
                  Spacer(),
                  const Icon(
                    Icons.star,
                    color: whiteclr,
                  ),
                  w2,
                  const Icon(
                    Icons.share,
                    color: whiteclr,
                  ),
                ],
              ),
              
              Row(
                children: [
                  w1,
                  CircleAvatar(
                    radius: 4.h,
                    backgroundImage: const AssetImage(
                      "assets/images/proimg.png",
                    ),
                  ),
                  w2,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ETH/USDT",
                        style: txtStyleWB,
                      ),
                      h1,
                      Text(
                        "\$14,582   " " +8.8%",
                        style: hintStyleS,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Open ",
                            style: hintStyleS,
                          ),
                          Text(
                            "153.54  ",
                            style: hintStyleS,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "High ",
                            style: hintStyleS,
                          ),
                          Text(
                            "153.54  ",
                            style: hintStyleS,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Low ",
                            style: hintStyleS,
                          ),
                          Text(
                            "153.54  ",
                            style: hintStyleS,
                          ),
                        ],
                      ), 
                    ],
                  ), 
                   
                ],
              ),
              h2,
              TraderOverview(),
              h1,
              tabMarket(),
              h1,
              Center(
                child: Image.asset("assets/images/bs.png",width: 50.w,)),
              
              h2,
              Image.asset("assets/images/ttpt.png",width: 96.w,),
            h2, 

            tabViewMarket(),
            h2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Image.asset("assets/images/buy.png",width: 40.w,),
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Image.asset("assets/images/sell.png",width: 40.w,),
                ),
              ],
            ),
            h3,   
            ],
          ),
        )),
      ),
    );
  }
   tabMarket() {
    return TabBar( 
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 3.0,
        indicatorColor: btnclr,
        unselectedLabelStyle: hintStyleS,
        labelStyle: txtStyleN,
        controller: _marketController,
        tabs: const [
          Tab(
            child: Text("Orderbook"),
          ),
          Tab(
            child: Text("Recent Trades"),
          ),
          Tab(
            child: Text("Token Info"),
          ),  
        ]
    );
  }
  tabViewMarket() {
    return Container( 
      height: 30.h,
      width: 98.w,
        color: divclr,
               child: TabBarView(
               controller: _marketController,
                children:  const [
                  OrderbookScreen(),
                  OrderbookScreen(),
                  OrderbookScreen(),
               ],
       ),
    );
  }
}