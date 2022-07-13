
import 'package:crypto_app/view/feed/feed_screen.dart';
import 'package:crypto_app/view/search/search_screen.dart';
import 'package:crypto_app/view/terms/terms_cond.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) => 
       GetMaterialApp(
        title: 'Crypto_app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
           primarySwatch: Colors.blue,
        ),
        home: SearchScreen(),
      ),
    );
  }
}
