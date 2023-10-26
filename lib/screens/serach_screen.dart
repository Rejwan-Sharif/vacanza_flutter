import 'package:better_place/utils/app_layout.dart';
import 'package:better_place/utils/app_style.dart';
import 'package:better_place/widget/double_text_widget.dart';
import 'package:better_place/widget/icon_list_widget.dart';
import 'package:better_place/widget/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:20, vertical: 20),
        children: [
          Gap(20),
          Text(
            "What are \nyou looking for?",
            style:Styles.headStyle1.copyWith(fontSize:25 ),),
          Gap(20),
          AppTicketTabs(firstTab: "Airline Ticket", secondTab: "Hotel"),
          Gap(20),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(15),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(25),
          Container(
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 13),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Text("Find Ticket",
                style: Styles.textStyle.copyWith(
                    color: Colors.white,fontSize: 24
                ),
              ),
            ),
          ),
          Gap(25),
          AppDoubleTextWidget(bigText: "Offers", smallText: "View All"),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                height: 425,
                width: size.width*0.42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ]
                  ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/sit.jpg",
                              )
                          )
                      ),
                    ),
                    Gap(20),
                    Text(
                        "20% The Exact Day to Book Your Flight for the Cheapest Airfare, According to Vacanza",
                      style: Styles.headStyle3,
                    )
                  ],
                ),
                ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: 210,
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount!! \nPay with Bkash", style: Styles.headStyle2.
                            copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                            Gap(15),
                            Text("Pay with bkash and redeem exiting offer! upto 20% discount on every fare",
                                style: Styles.headStyle2.
                                copyWith(fontWeight:FontWeight.w500 ,color: Colors.white, fontSize: 15)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,  color: Color(0xff189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(15),
                  Container(
                    width: size.width*0.44,
                    height: 210,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal:15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.redAccent,
                    ),
                    child: Column(
                      children: [
                        Text(
                            "Membership Discount !!",
                          style: Styles.headStyle2.copyWith(color: Colors.white),
                        ),
                        Gap(15),
                        Text(
                          "Get Exclusive offers for membership Redeem now!!",
                          style: Styles.headStyle4.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
