import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/market/market_fav.dart';
import 'package:crypto_app/view/market/orderbook_screen.dart';
import 'package:crypto_app/view/market/token_info.dart';
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
        backgroundColor: divclr,
        body: SingleChildScrollView(
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
                radius: 2.h,
                backgroundColor: divclr,
                backgroundImage: const AssetImage(
                  "assets/images/market1.png",
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
                 SizedBox(height: 8.0),
                  Row(
                    children: [
                     const  ImageIcon(
                      AssetImage("assets/images/trr.png"),
                      color: btnclr,
                      size: 11,
                    ),
                    w1,
                      Text(
                        "\$14,582   " " +8.8%",
                        style: hintStyleS,
                      ),
                    ],
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
                      w2,
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
                      w2,
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
                      w2,
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
          h1,
          Container(
            padding: EdgeInsets.all(15),
            decoration:  BoxDecoration(
              color: txtfieldclr,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft:  Radius.circular(20),
              ),
              border: Border.all(color: divclr,width: 2.0)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("1d",style: hintStyle,),
                    Text("1w",style: hintStyle,),
                    Text("1m",style: hintStyle,),
                    Text("3m",style: hintStyle,),
                    Text("6m",style: hintStyle,),
                    Text("1y",style: hintStyle,),
                  ],
                ),
                h1,
                Image.asset(
                  "assets/images/t1.png",width: 100.w,
                height: 25.h,fit: BoxFit.fill,),
              ],
            ),
          ),
          // TraderOverview(),
          h1,
          tabMarket(), 
          h1,
          Center(
            child: Image.asset("assets/images/bs.png",width: 30.w,
            height: 2.h,fit: BoxFit.fill,)),
          
          h1,
          Image.asset("assets/images/ttpt.png",width: 96.w,),
        h1, 

        tabViewMarket(),
        h1,
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
        ),
      ),
    );
  }
   tabMarket() {
    return Container(
      height: 4.h,
      child: TabBar(  
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 3.0,
          indicatorColor: btnclr,  
          indicatorPadding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          
          unselectedLabelStyle: const TextStyle(
              color: Color(0xff898282),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          labelStyle: const TextStyle(
                    color: whiteclr,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
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
      ),
    );
  }
  tabViewMarket() {
    return Container( 
      height: 31.h,
      width: 98.w,
        color: divclr,
               child: TabBarView(
               controller: _marketController,
                children:  const [
                  OrderbookScreen(),
                  OrderbookScreen(),
                  TokenInfoScrren(),
               ],
       ),
    );
  }
}