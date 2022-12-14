
import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/trade/margin_screen.dart';
import 'package:crypto_app/view/trade/perpetual.dart';
import 'package:crypto_app/view/trade/spot_screen.dart';
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
          child: DefaultTabController(
            length: 4,
            child: Column( 
              children:  [
                h1,
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5,color: greyclr),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child:   TabBar(  
                      unselectedLabelStyle: hintStyleS,
                      labelStyle: txtStyleN,
                    tabs: const [
                      Text('Spot', ),
                      Text('Margin', ),
                      Text('Future',  ),
                      Text('Perpetual', ),
                    ],
                    indicator: const ContainerTabIndicator(
                      width: 96,
                      height: 40,
                      color: Color(0xff25DEB0), 
                      radius: BorderRadius.all(Radius.circular(12.0)), 
                    ),
                  ),
                ),
             
                 SizedBox(
                  height: 49.h,                   
                  child:  TabBarView(
                    children:  [
                       SpotScreen(),
                       MarginScreen(),
                       PerpetualScreen(), 
                       PerpetualScreen(), 
                    ],
                  ),
                ),  
                  tabMarket(),
                  // Divider(color: whiteclr,thickness: 0.6),
                  tabViewMarket(),
              ]
          )
          ),
        )
        
      //   SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         h1,

      //          Image.asset("assets/images/spot.png", width: 100.w,),
      //         h2,
      //         Row(
      //         children: [
      //           Image.asset("assets/images/arrow.png", width: 10.w,),
      //           Text("RLCUSDT",style: txtStyleL,),
      //           w2,
      //           Text("+14.94%",style: txtStyleBtn,),
      //           Spacer(), 
      //           Image.asset("assets/images/gr.png", width: 10.w,), 
      //             ],
      //           ), 
      //           h2,
      //           Container(
      //           padding: EdgeInsets.all(10), 
      //             child: Row(
      //               children: [
      //                Image.asset("assets/images/tr.png", width: 45.w,), 
      //                w2,
      //                Column(
      //                  children: [
      //                    Text("RLCUSDT",style: txtStyleWB,),
      //                    SizedBox(  
      //                     width: 40.w, 
      //                     child: ListView.builder(
      //                       shrinkWrap: true,
      //                       itemCount: 3,
      //                       physics: NeverScrollableScrollPhysics(),
      //                       itemBuilder: (context, index) {
      //                         return Padding(
      //                           padding: const EdgeInsets.only(top: 4),
      //                           child: Column(
      //                             children: [
      //                               Row(
      //                                 children: [
      //                                   Text("0.325",style: txtStyleN), 
      //                                   const Spacer(),
      //                                 const Text(
      //                                   " 8.611704",style:  TextStyle(
      //                                          color: Color(0xffEB5151),
      //                                        ) ), 
      //                                       ],
      //                               ),
      //                                 Row(
      //                                 children: [
      //                                    Text("8.611704",style: txtStyleN),   
      //                                      const Text(" 8.611704",style: TextStyle(
      //                                         color: Color(0xff7ED570),
      //                                        ) ),
      //                                       ],
      //                               ),     
      //                             ],
      //                           ),
      //                       );
      //                     },
      //               ),
      //          )         
      //                  ],
      //                ),
      //               //  Spacer(),
      //               //  Text("AMT",style: hintStyle,),        
      //                 ],
      //                ),  
      //           ),
      //           
      //       ],
      //     ),
      //   ),
       ),
    );
  }

  tabMarket() {
    return Container(
      height: 5.h,
      decoration: BoxDecoration( 
      border: Border(bottom: BorderSide(color: Colors.grey.shade500, width: 0.8))),
      child: TabBar(
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
          ]),
    );
  }
  tabViewMarket() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight:   Radius.circular(8),
        ),
        color: divclr,
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
 