 
import 'package:crypto_app/view/terms/refer_details.dart';
 
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
        home: ReferDetailsScreen(),
      ),
    );
  }
}
