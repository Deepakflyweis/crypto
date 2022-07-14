import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DepositSearch extends StatefulWidget {
  const DepositSearch({super.key});

  @override
  State<DepositSearch> createState() => _DepositSearchState();
}

class _DepositSearchState extends State<DepositSearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: MyWidget(
            child: SingleChildScrollView(
            child: Column(children: [
      Arrowback(),
      h2,
      Container(
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Color(0xff292E38),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search_rounded,
              color: Color(0xffC4B5B5),
            ),
            hintText: ' Search Crypto',
            hintStyle: const TextStyle(
              fontSize: 12,
              color: Color(0xffC4B5B5),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    ])))));
  }
}
