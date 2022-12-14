
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/market/market_fav.dart';
import 'package:crypto_app/widgets/arrow_back.dart'; 
import 'package:flutter/material.dart'; 
import 'package:sizer/sizer.dart';

class MarketHomeScreen extends StatefulWidget {
  const MarketHomeScreen({super.key});

  @override
  State<MarketHomeScreen> createState() => _MarketHomeScreenState();
}

class _MarketHomeScreenState extends State<MarketHomeScreen> with SingleTickerProviderStateMixin {

late TabController _marketController; 

  @override
  void initState() {
    _marketController = TabController(length: 4,vsync: this);
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
              Arrowback(),
               Container(
                width: 85.w,
                height: 4.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: txtfieldclr,
            ),
            child: TextField(
              decoration: InputDecoration( 
                prefixIcon: const Icon(
                  Icons.search_rounded,
                 color: Color(0xff5C6978),
                ),
                hintText: '  Search Coin Pairs',
                hintStyle: const TextStyle(
                  fontSize: 12,
                  color: Color(0xff5C6978),
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 1.5.h, horizontal: 2.w),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
         
            ],
          ), 
 
          tabMarket(),
          h1,
          tabViewMarket(), 
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
          unselectedLabelStyle: const TextStyle(
            color: whiteclr,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          labelStyle: const TextStyle(
            color: whiteclr,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          controller: _marketController,
          tabs: const [
            Tab(
              child: FittedBox(child: Text("Favorites")),
            ),
            Tab(
              child: Text("Spot"),
            ),
            Tab(
              child: FittedBox(child: Text("Futures")),
            ),
            Tab(
              child: Text("Zones"),
            ),
            
          ]),
    );
  }
  tabViewMarket() {
    return Container( 
      height: 85.h,
      width: 100.w,
        color: divclr,
               child: TabBarView(
               controller: _marketController,
                children:  const [
                 MarketfavScreen(),
                 MarketfavScreen(),
                 MarketfavScreen(), 
                 MarketfavScreen(),
               ],
       ),
    );
  }
}