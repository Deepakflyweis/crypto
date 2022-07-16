
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:flutter/material.dart'; 

class TokenInfoScrren extends StatelessWidget {
  const TokenInfoScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
        child: Scaffold(
          backgroundColor: divclr,
          body: Column(
            children: [
             h1,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("ETH Etherium",style: txtStyleN,)),
                  Row(
                      children: [
                        Text("Market Cap",style: hintStyleS,),
                        Spacer(),
                         Text("12350001 USD",style: hintStyleS,), 
                      ],
                     ),h2,
                     Row(
                      children: [
                        Text("Circulating Supply",style: hintStyleS,),
                        Spacer(),
                         Text("12350001 USD",style: hintStyleS,), 
                      ],
                     ),
                      h2,
                       Row(
                      children: [
                        Text("Total Supply",style: hintStyleS,),
                        Spacer(),
                         Text("12350001 USD",style: hintStyleS,), 
                      ],
                     ),
                h2,
                 Row(
                      children: [
                        Text("Max Supply",style: hintStyleS,),
                        Spacer(),
                         Text("12350001 USD",style: hintStyleS,), 
                      ],
                     ),
               
                      Row(
                      children: [
                        Text("EXplorer",style: hintStyleS,),
                        Spacer(),
                         Text("www.eth.com",style: txtStyleBtn,), 
                      ],
                     ),
              
                      Row(
                      children: [
                        Text("Website",style: hintStyleS,),
                        Spacer(),
                         Text("www.eth.com",style: txtStyleBtn,), 
                      ],
                     ),
                 Align(
                  alignment: Alignment.centerLeft,
                  child: Text("What is ETH ?",style: txtStyleN,)),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Blandit sed a, donec neque quam id tortor, faucibus. Mi eget eu dignissim id.",
                  style: hintStyleS,
                  maxLines: 3,
                  overflow: TextOverflow.fade,
                  )
            
            ],
          ),
        ),
     
    ); 
  }
}