

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  Widget child;
  MyWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bck.png"), fit: BoxFit.fill)          
          ),
      child: child,
    );
  }
}
