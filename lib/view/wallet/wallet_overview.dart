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
    return SafeArea(
      child: Scaffold(
        backgroundColor: divclr,
        body: SingleChildScrollView(
          child: Column(
            children: [
              h2,
              totalValueSection(),
              
              // Container(
              //   width: 95.w,
              //   padding: EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //       color: txtfieldclr,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Column(children: [
              //     Row(
              //       children: [
              //         Text(
              //           "\$52,865.63",
              //           style: txtStyleL,
              //         ),
              //         Spacer(),
              //         Image.asset(
              //           "assets/images/arrow.png",
              //           width: 10.w,
              //         ),
              //         w2,
              //         Image.asset(
              //           "assets/images/gr.png",
              //           width: 10.w,
              //         ),
              //       ],
              //     ),
              //     h1,
              //     Align(
              //         alignment: Alignment.centerLeft,
              //         child: Text(
              //           "+100% of all time",
              //           style: hintStyle,
              //         )),
              //   ]),
              // ),
              h1,
              graphChart(),
              h1,
              walletFund(),
              h2,
            ],
          ),
        ),
      ),
    );
  }

  totalValueSection() {
    return Container(
        width: 98.w,
        height: 20.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: txtfieldclr,
        ),
        padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Total value(BTC)",
                  style: txtStyleWB,
                ),
                Spacer(),
                      Image.asset(
                        "assets/images/arrow.png",
                        width: 10.w,
                      ),
                      w2,
                      Image.asset(
                        "assets/images/gr.png",
                        width: 10.w,
                ),
                w1
              ],
            ),
            Text(
              "= \$0.0100",
              style: txtStyleWB,
            ),
            h1,
            Text(
              "Todays PNL",
              style: hintStyleS,
            ),
            h1,
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "+2.54%",
                style: txtStyleBtn,
              ),
            )
          ],
        ));
  }

  walletFund() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 48.w,
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
          width: 48.w,
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

  graphChart() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: txtfieldclr,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SubscriberChart(data: data),
          h1,
          // Row(
          //   children: [
          //     Text(
          //       "Wallet",
          //       style: txtStyleWB,
          //     ),
          //     Spacer(),
          //     Text(
          //       "Assets",
          //       style: txtStyleWB,
          //     ),
          //   ],
          // ),
          // h2,
          // Row(
          //   children: [
          //     Text(
          //       "Trading Wallet",
          //       style: hintStyle,
          //     ),
          //     Spacer(),
          //     Text(
          //       "\$52,8562.36",
          //       style: txtStyleN,
          //     ),
          //   ],
          // ),
          // h2,
          // Row(
          //   children: [
          //     Text(
          //       "Funding Wallet",
          //       style: hintStyle,
          //     ),
          //     Spacer(),
          //     Text(
          //       "\$52,8562.36",
          //       style: txtStyleN,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
