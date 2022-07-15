 
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/traders/trader_home.dart';
import 'package:crypto_app/view/traders/trader_overview.dart';
import 'package:crypto_app/view/traders/trader_position.dart';
import 'package:crypto_app/widgets/myWidget.dart';
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
                  onPressed: () => Get.offAll(() => TraderHome()),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: whiteclr,
                    size: 30,
                  )),
                  Icon(Icons.star,color: whiteclr,)
                ],
              ),
              h2,
              CircleAvatar(
              radius: 8.h,
              backgroundImage: AssetImage(
                "assets/images/trimg.png",
              ),
            ),
            h1,
            Text("Crazy007",style: txtStyleWB,),
            h2,
            tabTrader(),
            Divider(color: whiteclr,),
            tabViewTrader(),

            h3,
             GestureDetector(
              onTap: () {
                
              },
              child: Image.asset("assets/images/copytrader.png", width: 80.w,fit: BoxFit.fill,)),

          ],
          ),
        ),
        
      ),
    );
  }

  tabTrader() {
    return Container(  
        // color: divclr, 
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
        height: 45.h,
        color: divclr,
               child: TabBarView(
               controller: _packController,
                children:  [
                  TraderOverview(),
                  TraderPositionScreen(),
                  TraderPositionScreen(),
                  
               ],
       ),
    );
  }

}
