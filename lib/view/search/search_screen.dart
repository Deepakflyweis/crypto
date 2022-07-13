import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyWidget(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Arrowback(),
              h2,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 75.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Color(0xff292E38),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        //  fillColor:  Color(0xff292E38),
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          color: whiteclr,
                        ),
                        hintText: ' Search',
                        hintStyle: const TextStyle(
                          fontSize: 12,
                          color: Color(0xffC4B5B5),
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
                  const Text(
                    "Cancel",
                    style: TextStyle(
                        color: Color(0xffF84D4D),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              h3,
              SizedBox(
                width: 90.w,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                              radius: 30,
                              backgroundColor: whiteclr,
                              child: CircleAvatar(
                                radius: 27, 
                                backgroundColor: greyclr,
                              ),
                            ),
                          w2,
                           Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("BTC",style: txtStyleWB,),
                                Text("Bitcoin",style: txtStyleWS,),
                              ],
                           ),
                          Spacer(),
                           Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("\$ " "0.985234",style: txtStyleWB,),
                                Text("+9.35%",style: txtStyleWS,),
                              ],
                           ),


                           
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
