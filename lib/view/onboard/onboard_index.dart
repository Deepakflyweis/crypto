import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/onboard/onboard_model.dart';
import 'package:crypto_app/view/user/login.dart';
import 'package:crypto_app/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {

  int currtpage = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
  Container buildDot(int index, BuildContext context) { 
      return Container(
        height: 10,
        width: currtpage == index ? 10 : 10,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currtpage == index
              ? const Color(0xFFFFFFFF)
              : const Color(0xff252E35),
        ),
      ); 
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: CustomWidget(
          child: Column(
            children: [
              Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currtpage = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column( 
                    children: [
                      Image.asset(
                             contents[i].image!,
                              height: 55.h,width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                       h3,
                      Text(
                              contents[i].title!,
                              style: txtStyleWB
                            ),
                      h2,
                      Text(
                        contents[i].discription!,
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: txtStyleWS
                      ),
           
         
          
         ],
          );
        },
      ),
     ),
      Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
               contents.length, (index) => buildDot(index, context))),

          Container(
            height: 5.h,
            width:  35.w,
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
                color:  btnclr,
                borderRadius: BorderRadius.circular(10)),
              child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                  Get.offAll(()=> LogInScreen());
              },
              child: Text(
                currtpage == contents.length - 1 ? 'Next' : "Next",
                style: const TextStyle(
                  fontWeight: FontWeight.w500,color: blckclr,fontSize: 15),
                ),
               ),
               ), 
            ],
        ),
      ),
      ),
  );
  }
}