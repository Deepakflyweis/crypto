import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  Widget child;
  CustomWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(          
              color: Color(0xff161C22),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff1B232A),
                Color(0xff161C22),
              ]
           )
          ),
      child: child,
    );
  }
}
