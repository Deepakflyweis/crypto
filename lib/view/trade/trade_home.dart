
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/trade/trade_position.dart'; 
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
 
class TraderHomeScreen extends StatefulWidget {
  const TraderHomeScreen({super.key});

  @override
  State<TraderHomeScreen> createState() => _TraderHomeScreenState();
}

class _TraderHomeScreenState extends State<TraderHomeScreen>with SingleTickerProviderStateMixin {
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
               Image.asset("assets/images/spot.png", width: 100.w,),
              h2,
              Row(
              children: [
                Image.asset("assets/images/arrow.png", width: 10.w,),
                Text("RLCUSDT",style: txtStyleL,),
                w2,
                Text("+14.94%",style: txtStyleBtn,),
                Spacer(), 
                Image.asset("assets/images/gr.png", width: 10.w,), 
                  ],
                ),
                
                h2,
                Container(
                padding: EdgeInsets.all(10), 
                  child: Row(
                    children: [
                     Image.asset("assets/images/tr.png", width: 45.w,), 
                     w2,
                     Column(
                       children: [
                         Text("RLCUSDT",style: txtStyleWB,),
                         SizedBox(  
                          width: 40.w, 
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("0.325",style: txtStyleN), 
                                        const Spacer(),
                                      const Text(
                                        " 8.611704",style:  TextStyle(
                                               color: Color(0xffEB5151),
                                             ) ), 
                                            ],
                                    ),
                                      Row(
                                      children: [
                                         Text("8.611704",style: txtStyleN),   
                                           const Text(" 8.611704",style: TextStyle(
                                              color: Color(0xff7ED570),
                                             ) ),
                                            ],
                                    ),     
                                  ],
                                ),
                            );
                          },
                    ),
               )
          
                       ],
                     ),
                    //  Spacer(),
                    //  Text("AMT",style: hintStyle,), 
        
                      ],
                     ),  
                ),
                h2,
        
                tabMarket(),
                tabViewMarket(),
            ],
          ),
        ),
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
            child: Text("Positions (0)"),
          ),
          Tab(
            child: Text("My orders (0)"),
          ),
          Tab(
            child: Text("History"),
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
      height: 20.h,
      width: 98.w,
      child: TabBarView(
        controller: _marketController,
        children:  const [
          TradePosition(),
          TradePosition(),
          TradePosition()
        ],
      ),
    );
  }
}