
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/terms/bar_chart_model.dart';
import 'package:crypto_app/view/terms/refer_chart.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class WalletTrading extends StatefulWidget {
    WalletTrading({super.key});

  @override
  State<WalletTrading> createState() => _WalletTradingState();
}

class _WalletTradingState extends State<WalletTrading> {
  final List<BarChartModel> data = [
    BarChartModel(
      day: 'Sat',
      financial: 100,
      color: charts.ColorUtil.fromDartColor(btnclr),
    ),
    BarChartModel(
      day: 'Sun',
      financial: 350,
      color: charts.ColorUtil.fromDartColor(btnclr),
    ),
    BarChartModel(
      day: 'Mon',
      financial: 250,
      color: charts.ColorUtil.fromDartColor(btnclr),
    ),
    BarChartModel(
      day: 'Tue',
      financial: 250,
      color: charts.ColorUtil.fromDartColor(btnclr),
    ),
    BarChartModel(
      day: 'Wed',
      financial: 300,
      color: charts.ColorUtil.fromDartColor(btnclr),
    ),
    BarChartModel(
      day: 'Thu',
      financial: 250,
      color: charts.ColorUtil.fromDartColor(btnclr),
    ),
    BarChartModel(
      day: 'Fri',
      financial: 200,
      color: charts.ColorUtil.fromDartColor(btnclr),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 88.h,
         width: 96.w,
        padding: EdgeInsets.only(left: 8,right: 8),
         decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        border: Border.all(color: divclr),
        color: txtfieldclr,
     ),
        child: Column(
          children: [
            h1,
            Row(
            children: [
              Text("\$52,865.63",style: txtStyleL,),
              Spacer(),
              Image.asset("assets/images/arrow.png", width: 10.w,),
              w2,
              Image.asset("assets/images/gr.png", width: 10.w,), 
                ],
              ),
              h1,
              Align(
                alignment: Alignment.centerLeft,
                child: Text("+100% of all time",style: hintStyle,)),
              h1,
              Container(
                padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ), 
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/w1.png", 
                    width: double.infinity,), 
                  //  SubscriberChart(data: data),
                   h2,
                  //  walletFund() ,
      
                   Container(
                    width: 95.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: divclr,
                      ),
                      padding: EdgeInsets.all(15),
                     child: Column(
                       children: [
                         Row(
                          children: [
                            Text("Wallet",style: txtStyleWB,),
                            Spacer(),
                             Text("Assets",style: txtStyleWB,), 
                          ],
                         ),
                         h1,
                    Row(
                    children: [
                      Text("Trading Wallet",style: hintStyle,),
                      Spacer(),
                       Text("\$52,8562.36",style: txtStyleN,), 
                    ],
                   ),
                    h1,
                    Row(
                    children: [
                      Text("Funding Wallet",style: hintStyle,),
                      Spacer(),
                       Text("\$52,8562.36",style: txtStyleN,), 
                    ],
                   ),
                       ],
                     ),
                   ),
                   
                  ],
                ),
              )
          
          ],
        ), 
    );
  }
  walletFund() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 45.w,
          height: 10.h,
          padding: EdgeInsets.all(15),
          decoration:   BoxDecoration(
            color: txtfieldclr,
            borderRadius: BorderRadius.circular(20),  
          ),
          child: Column(
            children: [
              Text("Funding wallet",style: hintStyle,),
              Text(
                "\$52,8562.36",
                style: hintStyle,
              ),
            ],
          ),
        ),
        Container(
          width: 45.w,
          height: 10.h,
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          decoration:  BoxDecoration(
            color: txtfieldclr,
            borderRadius: BorderRadius.circular(20), 
          ),
          child: Column(
            children: [
              Text("Trading wallet",style: hintStyle,),
              Text(
                "\$52,8562.36",
                style: hintStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }

}
