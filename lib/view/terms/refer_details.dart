import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/terms/bar_chart_model.dart';
import 'package:crypto_app/view/terms/refer_chart.dart';
import 'package:crypto_app/view/terms/terms_cond.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ReferDetailsScreen extends StatefulWidget {
  const ReferDetailsScreen({super.key});

  @override
  State<ReferDetailsScreen> createState() => _ReferDetailsScreenState();
}

class _ReferDetailsScreenState extends State<ReferDetailsScreen> {

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
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Arrowback(),
              TextButton(
                  onPressed: () {
                    Get.to(() => TermsNConditon());
                  },
                  child: const Text(
                    "Terms",
                    style: TextStyle(color: btnclr),
                  )),
            ],
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Text('''  REFER AND
  EARN''',style: txtStyleWB,),
          ),
          h2,
          Container(
            height: 8.h,
            width: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: txtfieldclr,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/tweet.png",
                  height: 5.h,
                  fit: BoxFit.fitHeight,
                ),
                Image.asset(
                  "assets/images/fb.png",
                  height: 5.h,
                  fit: BoxFit.fitHeight,
                ),
                Image.asset(
                  "assets/images/tweet.png",
                  height: 5.h,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ),
          h2,
          Container(
            color: txtfieldclr,
            child: Row(
              children: [
                Text("Referal income", style: txtStyleWB),
                Spacer(),
                Text("Last week", style: hintStyleS),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: whiteclr,
                    ))
              ],
            ),
          ),
          SubscriberChart( 
            data: data,
          ),
          h2,
          Row(
            children: [
              Text("    \$ 9.369", style: txtStyleWB,),
              Spacer(),
            
               Image.asset(
                  "assets/images/widraw.png",
                    height: 5.h,
                    width: 25.w,
                    fit: BoxFit.fill,
                 ),
            Divider(color: Color(0xff898282),thickness: 1.5,),
             
            ],
          ),
               h2,
          Align(
              alignment: Alignment.centerLeft,
              child: Text("    Referrals", style: txtStyleWB),  
            ),
       
        ]),
      )));
  }
}
