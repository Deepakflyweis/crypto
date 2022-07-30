import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:crypto_app/utils/app_style/textStyle.dart';
import 'package:crypto_app/view/feed/feed_detail.dart';
import 'package:crypto_app/view/feed/post_feed.dart';
import 'package:crypto_app/widgets/arrow_back.dart';
import 'package:crypto_app/widgets/myWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: divclr,
        // floatingActionButton: FloatingActionButton(
        //   onPressed:  () => Get.to(() => const PostFeed()),
        //   backgroundColor: whiteclr,
        //   child: const Icon(Icons.add,color: backgroudclr,size: 30,), 
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Arrowback(),
              SizedBox( 
                width: 95.w,
                child: ListView.builder(
                itemCount: 5, 
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Get.to(() => FeedDetail()),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5,8,5,0),
                      child: Container( 
                        width: 95.w, 
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: txtfieldclr, 
                        ), 
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                         Text("Crypto News", style: txtStyleWB,),
                        
                         Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh egestas bibendum vitae vitae nullam arcu nisl, amet. Non metus magna massa ut. Leo nunc, a libero magna. A lorem sit vel auctor ultrices id. Vel, pharetra enim netus blandit. Eget urna, eget odio turpis rutrum ultricies tellus ultrices maecenas. At duis nibh sem dictumst ipsum, orci lacus neque.",
                            maxLines: 3, overflow: TextOverflow.ellipsis,
                            style: hintStyle,
                         ),
                         h1,
                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.thumb_up_alt_outlined,color: whiteclr,),
                          Icon(Icons.chat_bubble_outline,color: whiteclr,),
                          Icon(Icons.share_outlined,color: whiteclr,),
                        ],
                         )
                            
                          ],
                        ),
                      ),
                    ),
                  );
                },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
