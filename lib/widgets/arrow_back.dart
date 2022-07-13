
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Arrowback extends StatelessWidget {
  const Arrowback({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
            color: whiteclr,
            size: 30,
          )),
    );
  }
}