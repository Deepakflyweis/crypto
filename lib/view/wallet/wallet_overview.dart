import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/terms/bar_chart_model.dart';
import 'package:crypto_app/view/terms/refer_chart.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class WalletOverview extends StatefulWidget {
    WalletOverview({super.key});

  @override
  State<WalletOverview> createState() => _WalletOverviewState();
}

class _WalletOverviewState extends State<WalletOverview> {
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
    return MyWidget(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: divclr,
          body: Column(
            children: [
              h2,
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
                h2,
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
                     SubscriberChart(data: data),
                     h1,
                     Row(
                      children: [
                        Text("Wallet",style: txtStyleWB,),
                        Spacer(),
                         Text("Assets",style: txtStyleWB,), 
                      ],
                     ),
                     h2,
                      Row(
                      children: [
                        Text("Trading Wallet",style: hintStyle,),
                        Spacer(),
                         Text("\$52,8562.36",style: txtStyleN,), 
                      ],
                     ),
                      h2,
                      Row(
                      children: [
                        Text("Funding Wallet",style: hintStyle,),
                        Spacer(),
                         Text("\$52,8562.36",style: txtStyleN,), 
                      ],
                     ),
                    ],
                  ),
                )
            
            ],
          ),
        ),
      ),
    );
  }
}
