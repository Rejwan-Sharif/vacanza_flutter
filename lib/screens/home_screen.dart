import 'package:better_place/screens/hotel_screen.dart';
import 'package:better_place/screens/ticket_view.dart';
import 'package:better_place/utils/app_info_list.dart';
import 'package:better_place/utils/app_layout.dart';
import 'package:better_place/utils/app_style.dart';
import 'package:better_place/widget/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomeScareen extends StatefulWidget {
  const HomeScareen({super.key});

  @override
  State<HomeScareen> createState() => _HomeScareenState();
}

class _HomeScareenState extends State<HomeScareen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Good Morning",
                        style: Styles.headStyle3,
                        ),
                        const Gap(5),
                        Text(
                            "Book Ticket",
                          style: Styles.headStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            "images/img_1.png",
                          )
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Colors.cyan),
                      Text("search"),
                    ],
                  ),
                ),
                const Gap(40),
                AppDoubleTextWidget(bigText: "Upcomming Flight", smallText: "view all")
              ],
            )
          ),
         const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20) ,
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(airTicket: singleTicket)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: "Avaialable Hotels", smallText: "view all")
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
              ),
          ),
        ],
      ),
    );
  }
}
