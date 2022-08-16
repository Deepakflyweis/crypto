 
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart'; 
import 'package:crypto_app/view/traders/trader_overview.dart';
import 'package:crypto_app/view/traders/trader_position.dart'; 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TraderIndexScreen extends StatefulWidget {
  const TraderIndexScreen({super.key});

  @override
  State<TraderIndexScreen> createState() => _TraderIndexScreenState();
}

class _TraderIndexScreenState extends State<TraderIndexScreen> with SingleTickerProviderStateMixin {

late TabController _packController;


  @override
  void initState() {
    _packController = TabController(length: 3,vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _packController.dispose();
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: whiteclr,
                    size: 30,
                  )),
                  Icon(Icons.star,color: whiteclr,)
                ],
              ),
              h2,
              const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                "assets/images/trimg.png",
              ),
            ),
            h1,
            const Text("Crazy007",style: TextStyle(
                  color: whiteclr,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),
            h1,
            tabTrader(), 
            tabViewTrader(), 
            h3,
             GestureDetector(
              onTap: () {
                
              },
              child: Image.asset("assets/images/copytrader.png", width: 80.w,fit: BoxFit.fill,)),
              h2
          ],
          ),
        ),
        
      ),
    );
  }

  tabTrader() {
    return Container(
      height: 5.h,
       decoration: BoxDecoration( 
      border: Border(
        bottom: BorderSide(
          color: Colors.grey.shade500, width: 0.6))),
      child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 2.0,
          indicatorColor: btnclr,
          unselectedLabelStyle: txtStyleN,
          labelStyle:txtStyleN,
          controller: _packController,
          tabs: const [
            Tab(
              child: Text("Overview"),
            ),
            Tab(
              child: Text("Positions"),
            ),
            Tab(
              child: Text("History"),
            ),
            
          ]),
    );
  }

  tabViewTrader() {
    return Container( 
        height: 73.h,
        color: divclr,
               child: TabBarView(
               controller: _packController,
                children: const [
                  TraderOverview(),
                  TraderPositionScreen(),
                  TraderPositionScreen(),
                  
               ],
       ),
    );
  }

}
