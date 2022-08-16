
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TraderOverview extends StatefulWidget {
  const TraderOverview({super.key});

  @override
  State<TraderOverview> createState() => _TraderOverviewState();
}

class _TraderOverviewState extends State<TraderOverview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: txtfieldclr,
      padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: 73.h,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset("assets/images/newC1.png", 
              height: 50, fit: BoxFit.fill,
              ),
            ), 
           Align(
              alignment: Alignment.centerLeft,
              child: Image.asset("assets/images/newC2.png",
           width: 85.w,
           height: 180,
           fit: BoxFit.fill)),
           h2,
           Image.asset("assets/images/TI.png",  
             width: 95.w,
             fit: BoxFit.fill,),
             h1,
            Image.asset("assets/images/ROI.png",
            height: 12.h,
            width: 90.w,fit: BoxFit.fill,),
            h1,
           Align(
            alignment: Alignment.centerLeft,
             child: Padding(
               padding: const EdgeInsets.only(left: 20.0),
               child: Image.asset(
                "assets/images/newC3.png",
                height: 7.h,
                width: 30.w,fit: BoxFit.fill,
               ),
             ),
           ),
          ],
        )
        // LineChart(
        //   LineChartData(borderData: FlBorderData(show: false), lineBarsData: [
        //     LineChartBarData(spots: [ 
        //       const FlSpot(1, 3),
        //       const FlSpot(7, 10),
        //       const FlSpot(14, 7), 
        //       const FlSpot(11, 3),  
        //       const FlSpot(16, 20),
        //       const FlSpot(28, 12), 
        //     ])
        //   ]),
        // ),
    );
  }
}