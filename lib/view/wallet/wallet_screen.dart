import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen>
    with SingleTickerProviderStateMixin {
  late TabController _marketController;

  @override
  void initState() {
    _marketController = TabController(length: 3, vsync: this);
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
            tabMarket(),
          ],
        ),
      ),
    ));
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
        ]);
  }

  tabViewMarket() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight:   Radius.circular(8),
        ),
        color: backgroudclr,
     ),
      height: 90.h,
      width: 98.w,
      color: divclr,
      child: TabBarView(
        controller: _marketController,
        children: const [
          // OrderbookScreen(),
          // OrderbookScreen(),
          // OrderbookScreen(),
        ],
      ),
    );
  }
}
