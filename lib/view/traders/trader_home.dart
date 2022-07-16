import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/traders/trader_index.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TraderHome extends StatefulWidget {
  const TraderHome({super.key});

  @override
  State<TraderHome> createState() => _TraderHomeState();
}

class _TraderHomeState extends State<TraderHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: MyWidget(
                child: SingleChildScrollView(
                 child: Column(
                  children: [
      // Arrowback(),
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
            hintText: ' Search',
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
      h2,
      SizedBox(
        width: 95.w,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(8.0,6,8,0),
              child: Card(
                color: divclr,
                child: Column(
                  children: [
                    h1,
                    Row(
                      children: [
                        w1,
                        CircleAvatar(
                        radius: 3.h,
                        backgroundImage: const AssetImage(
                          "assets/images/proimg.png",
                        ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Crazy007",style: txtStyleWB,),
                        Text("25/mo. from \$100 ",style: hintStyleS,),
                      ],
                    ),
                    Icon(
                      Icons.star_border,color: whiteclr,
                    )
                  ],
                 ),
                 h1,
                 InkWell(
                  onTap: () => Get.to(() => TraderIndexScreen()),
                   child: Container(
                    height: 10.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xff0C121E),
                    ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Image.asset(
                            "assets/images/line.png",
                            width: 60.w,
                            fit: BoxFit.fill,
                          ),
                   
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("+950.7%",style: txtStyleBtn,),
                          Text("Vol \$68.8m",style: hintStyleS,),
                        ],
                      ), 
                    ]),
                    ),
                 ),
                  h1
                ]),
              ),
            );
          },
        ),
      )
    ])))));
  }
}
