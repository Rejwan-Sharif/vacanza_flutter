import 'package:better_place/utils/app_layout.dart';
import 'package:better_place/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic>hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "images/${hotel['image']}"
                )
              )
            ),
          ),
          const Gap(10),
          Text(
            "${hotel['name']}",
            style: Styles.headStyle2.copyWith(color: Styles.khkhiColor),
          ),
          const Gap(5),
          Text(
              "${hotel['destination']}",
            style: Styles.headStyle3.copyWith(color:Colors.white),
          ),
          Gap(8),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headStyle1.copyWith(color: Styles.khkhiColor),
          ),
        ],
      ),
    );
  }
}
