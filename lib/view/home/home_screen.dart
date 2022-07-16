import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/feed/feed_screen.dart';
import 'package:crypto_app/view/home/trending_screen.dart';
import 'package:crypto_app/view/notification/notification_screen.dart';
import 'package:crypto_app/view/search/search_screen.dart';
import 'package:crypto_app/view/support/support_screen.dart';
import 'package:crypto_app/view/terms/refer_details.dart';
import 'package:crypto_app/view/traders/trader_home.dart';
import 'package:crypto_app/view/user/profile_screen.dart';
import 'package:crypto_app/widgets/myWidget.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _packController;

  @override
  void initState() {
    _packController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _packController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyWidget(
            child: SingleChildScrollView(
          child: Column(
            children: [
              h3,
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => ProfileScreen()),
                    child: CircleAvatar(
                      radius: 3.h,
                      backgroundImage: const AssetImage(
                        "assets/images/proimg.png",
                      ),
                    ),
                  ),
                  w3,
                  InkWell(
                    onTap: () => Get.to(() => SearchScreen()),
                    child: Container(
                      width: 55.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xff040811),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          //  fillColor:  Color(0xff292E38),
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            color: Color(0xff5C6978),
                          ),
                          hintText: ' Search',
                          hintStyle: const TextStyle(
                            fontSize: 12,
                            color: Color(0xff5C6978),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 1.5.h, horizontal: 2.w),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Get.to(() => SupportScreen());
                      },
                      icon: const Icon(Icons.headset_mic_outlined,
                          color: Color(0xff5C6978))),
                  IconButton(
                      onPressed: () {
                        Get.to(() => NotificationScreen());
                      },
                      icon: const Icon(Icons.notifications,
                          color: Color(0xff5C6978))),
                ],
              ),
              Image.asset(
                "assets/images/adds.png",
                height: 25.h,
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/deposit.png",
                      height: 6.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ReferDetailsScreen());
                    },
                    child: Image.asset(
                      "assets/images/refer.png",
                      height: 7.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/chatroom.png",
                      height: 6.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => FeedScreen());
                    },
                    child: Image.asset(
                      "assets/images/feed.png",
                      height: 6.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              h2,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text.rich(TextSpan(
                          text: "BTC/USDT",
                          style: hintStyleS,
                          children: const [
                            TextSpan(
                              text: "  -0.27%",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ])),
                      Text(
                        "49095.5",
                        style: txtStyleWB,
                      ),
                      Text(
                        "\$ 19,070.67",
                        style: hintStyleS,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text.rich(TextSpan(
                          text: "KCS/USDT",
                          style: hintStyleS,
                          children: const [
                            TextSpan(
                              text: "  -0.27%",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ])),
                      Text(
                        "8.424",
                        style: txtStyleWB,
                      ),
                      Text(
                        "\$ 6.05",
                        style: hintStyleS,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text.rich(TextSpan(
                          text: "ETH/USDT",
                          style: hintStyleS,
                          children: const [
                            TextSpan(
                              text: "  -0.27%",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ])),
                      Text(
                        "8.424",
                        style: txtStyleWB,
                      ),
                      Text(
                        "\$ 6.05",
                        style: hintStyleS,
                      ),
                    ],
                  ),
                ],
              ),
              h2,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => TraderHome());
                    },
                    child: Image.asset(
                      "assets/images/user.png",
                      height: 26.h,
                      width: 48.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/adds1.png",
                        height: 15.h,
                        width: 48.w,
                        fit: BoxFit.fill,
                      ),
                      h1,
                      Image.asset(
                        "assets/images/deph.png",
                        height: 10.h,
                        width: 48.w,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ],
              ),
              h1,
              tabIndex(),
              tabView(),
            ],
          ),
        )),
      ),
    );
  }

  tabIndex() {
    return Container(
      //  padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        ),
        color: txtfieldclr,
      ),
      child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 2.0,
          indicatorColor: btnclr,
          unselectedLabelStyle: hintStyleS,
          labelStyle: const TextStyle(
            color: whiteclr,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          controller: _packController,
          tabs: const [
            Tab(
              child: Text("Trending"),
            ),
            Tab(
              child: Text("Gainers"),
            ),
            Tab(
              child: Text("New"),
            ),
            Tab(
              child: Text("Volume"),
            ),
            Tab(
              child: Text("Losers"),
            ),
          ]),
    );
  }

  tabView() {
    return SizedBox(
      height: 25.h,
      child: TabBarView(
        controller: _packController,
        children: [
          TrendingTab(),
          TrendingTab(),
          TrendingTab(),
          TrendingTab(),
          TrendingTab(),
        ],
      ),
    );
  }
}
