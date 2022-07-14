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
            body: MyWidget(
      child: SingleChildScrollView(
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
          h2,
          Row(
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
          SubscriberChart(
            
            data: data,
          ),
        ]),
      ),
    )));
  }
}
