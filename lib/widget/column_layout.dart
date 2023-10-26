import 'package:better_place/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final String  firstText;
  final String secondText;
  final bool? isColor;
  final CrossAxisAlignment alignment;
  const AppColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
      style: isColor == null? Styles.headStyle3.copyWith
        (color: Colors.white):Styles.headStyle3),
        Gap(5),
        Text(secondText,
          style: isColor == null? Styles.headStyle4.copyWith
            (color: Colors.white):Styles.headStyle4,),
      ],
    );
  }
}
