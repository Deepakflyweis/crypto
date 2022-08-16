import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/deposit/deposit_detail.dart';
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
  HomeScreen({super.key});

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
        backgroundColor: divclr,
        body: SingleChildScrollView(
          child: Column(
            children: [
              h1,
              searchmenu(),
              Image.asset(
                "assets/images/adds.png",
                height: 25.h,
                width: 95.w,
              ),
              depositSection(),
              h1,
              priceSection(),
              h1,
              searchMenu2(),
              h1,
              userpro(),
              h1,
              tabIndex(),
              tabView(),
            ],
          ),
        ),
      ),
    );
  }

  tabIndex() {
    return Container(
      //  padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: txtfieldclr,
      ),
      child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 3.0,
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
              child: FittedBox(child: Text("Trending")),
            ),
            Tab(
              child: FittedBox(child: Text("Gainers")),
            ),
            Tab(
              child: Text("New"),
            ),
            Tab(
              child: FittedBox(child: Text("Volume")),
            ),
            Tab(
              child: FittedBox(child: Text("Losers")),
            ),
          ]),
    );
  }

  tabView() {
    return Container(
      color: divclr,
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

  searchmenu() {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Get.to(() => ProfileScreen()),
          child: CircleAvatar(
            radius: 2.h,
            backgroundImage: const AssetImage(
              "assets/images/proimg.png",
            ),
          ),
        ),
        w1,
        InkWell(
          onTap: () => Get.to(() => SearchScreen()),
          child: Container(
            width: 70.w,
            height: 4.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: txtfieldclr,
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        InkWell(
            onTap: () {
              Get.to(() => SupportScreen());
            },
            child: const Icon(Icons.headset_mic_outlined,
                color: Color(0xff5C6978))),
        w1,
        InkWell(
            onTap: () {
              Get.to(() => NotificationScreen());
            },
            child: const Icon(Icons.notifications, color: Color(0xff5C6978))),
      ],
    );
  }

  depositSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            Get.to(() => DepositDetails());
          },
          child: Container(
            height: 5.h,
            width: 16.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: txtfieldclr,
            ),
            child: Image.asset(
              "assets/images/deposit.png",
              height: 5.h,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(() => ReferDetailsScreen());
          },
          child: Container(
            height: 5.h,
            width: 16.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: txtfieldclr,
            ),
            child: Image.asset(
              "assets/images/refer.png",
              height: 5.h,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),

        InkWell(
          onTap: () {
            Get.to(() => FeedScreen());
          },
          child: Container(
            height: 5.h,
            width: 16.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: txtfieldclr,
            ),
            child: Image.asset(
              "assets/images/feed.png",
              height: 5.h,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(() => DepositDetails());
          },
          child: Container(
            height: 5.h,
            width: 16.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: txtfieldclr,
            ),
            child: Image.asset(
              "assets/images/deposit.png",
              height: 5.h,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(() => DepositDetails());
          },
          child: Container(
            height: 5.h,
            width: 16.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: txtfieldclr,
            ),
            child: Image.asset(
              "assets/images/deposit.png",
              height: 5.h,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     Get.to(() => ReferDetailsScreen());
        //   },
        //   child: Container(
        //     height: 7.h,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: txtfieldclr,
        //     ),
        //  child:Image.asset(
        //     "assets/images/refer.png",
        //     height: 5.h,
        //     fit: BoxFit.fill,
        //   ),)
        // ),
      ],
    );
  }

  priceSection() {
    return Container(
      width: 98.w,
      height: 8.3.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: txtfieldclr,
      ),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "BTC/USDT",
                    style: hintStyleS,
                  ),
                  const ImageIcon(
                    AssetImage("assets/images/trr.png"),
                    color: Colors.red,
                    size: 11,
                  ),
                  const Text(
                    "  0.27%",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                "\$ 49095.5",
                style: txtStyleBtn,
              ),
              // Text(
              //   "\$ 19,070.67",
              //   style: hintStyleS,
              // ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "KCS/USDT",
                    style: hintStyleS,
                  ),
                  const ImageIcon(
                    AssetImage("assets/images/trr.png"),
                    color: Colors.red,
                    size: 11,
                  ),
                  const Text(
                    "  0.27%",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                "\$8.424",
                style: txtStyleBtn,
              ),
              // Text(
              //   "\$ 6.05",
              //   style: hintStyleS,
              // ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "ETH/USDT",
                    style: hintStyleS,
                  ),
                  const ImageIcon(
                    AssetImage("assets/images/trg.png"),
                    color: Colors.green,
                    size: 11,
                  ),
                  const Text(
                    "  0.27%",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              Text(
                "\$ 8.424",
                style: txtStyleBtn,
              ),
              // Text(
              //   "\$ 6.05",
              //   style: hintStyleS,
              // ),
            ],
          ),
        ],
      ),
    );
  }

  searchMenu2() {
    return Container(
      width: 98.w,
      height: 4.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: txtfieldclr,
      ),
      child: TextField(
        decoration: InputDecoration(
          //  fillColor:  Color(0xff292E38),
          prefixIcon: const Icon(
            Icons.volume_down,
            color: btnclr,
          ),
          suffixIcon: const Icon(
            Icons.menu,
            color: greyclr,
          ),
          hintText: ' Lorem ipsum dolor sit amet, consectetur adipiscing',
          hintStyle: const TextStyle(
            fontSize: 13,
            color: Color(0xff5C6978),
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  userpro() {
    return SizedBox(
      height: 30.h,
      width: 98.w,
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Get.to(() => TraderHome());
              },
              child: Stack(
                children: [
                  Container(
                    height: 30.h,
                    width: 47.w,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(20),
                      ),
                      color: txtfieldclr,
                    ),
                  ),
                  Positioned(
                    top: 2,
                    left: 2,
                    child: Container(
                      height: 29.h,
                      width: 44.w,
                      padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(20),
                          ),
                          color: txtfieldclr,
                          border: Border.all(color: divclr, width: 1.0)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 2.h,
                            backgroundImage: const AssetImage(
                              "assets/images/proimg.png",
                            ),
                          ),
                          w1,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Crazy007",
                                style: txtStyleWB,
                              ),
                              Text(
                                "25% of portfolio",
                                style: hintStyleS,
                              ),
                              const Text(
                                "950%(25%)",
                                style: TextStyle(
                                  color: btnclr,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Spacer(),

                              // Text("8.5",style: txtStyleBtn,),
                              Image.asset(
                                "assets/images/line1.png",
                                width: 30.w,
                                fit: BoxFit.fill,
                              ),
                              h2
                            ],
                          ),
                          h1,
                        ],
                      ),
                    ),
                  )
                ],
              )),
          w1,
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 19.h,
                    width: 47.w,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(10),
                      ),
                      color: txtfieldclr,
                    ),
                  ),
                  Positioned(
                    top: 2,
                    left: 2,
                    child: Container(
                      height: 18.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          color: txtfieldclr,
                          border: Border.all(color: divclr, width: 1.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          h3,
                          const Text(
                            "GET",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          h1,
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "\$100",
                                style: txtStyleN,
                              )),
                          h1,
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "NOW",
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              h1,
              InkWell(
                onTap: () => _depositDialog(),
                child: Container(
                  height: 9.5.h,
                  width: 47.5.w,
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1B1D29),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      h2,
                      Text(
                        "Deposit",
                        style: txtStyleN,
                      ),
                      Text(
                        "Crypto/P2P",
                        style: hintStyleS,
                      ),
                    ],
                  ),
                ),
              )
              // Image.asset(
              //   "assets/images/deph.png",

              //   fit: BoxFit.fill,
              // ),
            ],
          ),
        ],
      ),
    );
  }

  _depositDialog() {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (ctx) => AlertDialog(
      backgroundColor: Colors.transparent,
      title: Container( 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
           color: txtfieldclr,
        ),
      child: GestureDetector(
          onTap: () => Get.back(),
          child: Image.asset("assets/images/dep.png",
          fit: BoxFit.fill),
          ),
      ),
    
    ),);
  }
}
