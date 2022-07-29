import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MarginScreen extends StatefulWidget {
    MarginScreen({super.key});

  @override
  State<MarginScreen> createState() => _MarginScreenState();
}

class _MarginScreenState extends State<MarginScreen> {
  var _selected ="";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        h2,
        Row(
          children: [
            Image.asset(
              "assets/images/arrow.png",
              width: 10.w,
            ),
            Text(
              "RLCUSDT",
              style: txtStyleWB,
            ),
            w2,
            Image.asset(
              "assets/images/m1.png",
              width: 27.w,
            ),
            w1,
            Image.asset(
              "assets/images/m2.png",
              width: 20.w,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                _displayDialog(context);
                // filterDialog();
              },
              child: Image.asset(
                "assets/images/candle.png",
                width: 6.w,
              ),
            ),
          ],
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "+14.94%",
                style: txtStyleBtn,
              ),
            )),
        h2,
        Container(
          decoration: const BoxDecoration(
              color: txtfieldclr,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              )),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset("assets/images/tr.png", width: 44.w),
              w2,
              Image.asset(
                "assets/images/tr1.png",
                width: 44.w,
              ),
            ],
          ),
        ),
      ],
    );
  }

  _displayDialog(BuildContext context) async {
    _selected = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: SimpleDialog( 
            backgroundColor: divclr,
            title: Row( 
               children: [
                Text(
                 "Margin mode ",
                   style: txtStyleN,
                   ),
                    Spacer(),
                   IconButton(onPressed: () => Get.back(),
                    icon: Icon(Icons.close,color: whiteclr,)),
                   ],
                ), 
            children:[
              Divider(color: whiteclr,),
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                                  "assets/images/d1.png",  
                                    height: 5.h,
                                   width: 30.w, 
                                  fit: BoxFit.fill,
                           ), 
                          Image.asset(
                               "assets/images/d2.png",
                                 height: 5.h,
                            width: 30.w, 
                                fit: BoxFit.fill,
                           )
                        ],
              ),
              h1,
              Text("This mode change will only apply to the selcted contract",
              style: hintStyleS,maxLines: 2,overflow: TextOverflow.fade,),
              h1,
              Text("What is Cross margin and isolated margin?",
              style: txtStyleN,maxLines: 2,overflow: TextOverflow.fade,),
              h2,
              Image.asset(
                  "assets/images/d3.png",
                     height: 6.h,
                     width: 50.w, 
                      fit: BoxFit.fill,
                  )
            ],
            //backgroundColor: Colors.green,
          ),
        );
      },
    );

    if(_selected != null)
      {
        setState(() {
          _selected = _selected;
        });
      }
  }
}
