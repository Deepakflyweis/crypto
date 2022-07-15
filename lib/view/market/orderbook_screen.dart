import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:flutter/cupertino.dart';
 
 

class OrderbookScreen extends StatefulWidget {
  const OrderbookScreen({super.key});

  @override
  State<OrderbookScreen> createState() => _OrderbookScreenState();
}

class _OrderbookScreenState extends State<OrderbookScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(  
      padding: EdgeInsets.only(left: 8, right: 8),
      color: txtfieldclr,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Row(
              children: [
                Text("8.611704",style: txtStyleN), 
                const Spacer(),
                Container( 
                  decoration: const BoxDecoration(
                     color: btnclr,
                    boxShadow: [ 
                      BoxShadow(
                          color: btnclr,
                        spreadRadius: 2, 
                      )
                    ]
                  ),
                  child: Text(" 8.611704",style: txtStyleN ),
                ),
                w1,
                Container(  
                  decoration: const BoxDecoration(
                     color: Color(0xffFF0A0A),
                    boxShadow: [ 
                      BoxShadow(
                         color: Color(0xffFF0A0A),
                        spreadRadius: 2, 
                      )
                    ]
                  ),
                  child: Text(" 8.611704",style: txtStyleN ),
                ),
                const Spacer(),
                Text("8.611704",style: txtStyleN),   
              ],
            ),
          );
        },
      ),
    );
  }
}
