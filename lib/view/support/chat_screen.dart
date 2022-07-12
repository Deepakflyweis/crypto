
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart'; 
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyWidget(
          child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: whiteclr,
                      size: 30,
                    )),
              ),
            
              ],
          ),
        )),
      ),
    );
  
  }
}