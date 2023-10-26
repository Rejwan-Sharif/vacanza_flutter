import 'package:better_place/screens/ticket_view.dart';
import 'package:better_place/utils/app_info_list.dart';
import 'package:better_place/utils/app_layout.dart';
import 'package:better_place/utils/app_style.dart';
import 'package:better_place/widget/column_layout.dart';
import 'package:better_place/widget/layout_builder_widget.dart';
import 'package:better_place/widget/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  final Map<String, dynamic>ticket;
  final bool? isColor;
  const TicketScreen({super.key, required this.ticket,this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              Gap(40),
              Text("Tickes", style: Styles.headStyle1,),
              Gap(20),
              AppTicketTabs(firstTab: "Upcomming", secondTab: "History"),
              Gap(20),
              Container(
                  padding: EdgeInsets.only(left: 15),
              child: TicketView(airTicket: ticketList[0], isColor: true,),
              ),
              SizedBox(height: 1),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "Jason Ray",
                            secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,),
                        AppColumnLayout(firstText: "B10122",
                            secondText:"Passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,)
                      ],
                    ),
                  Gap(20),
                  const AppLayoutBuilderWidget(section: 15,isColor: false,width: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "IE048 218283",
                          secondText: "number of e-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,),
                        AppColumnLayout(firstText: "B14832",
                          secondText:"Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,)
                      ],
                    ),
                    Gap(20),
                    const AppLayoutBuilderWidget(section: 15,isColor: false,width: 5,),
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset('images/visa.png',scale: 11,)
                          ],
                        ),
                        Gap(5),
                        Text("Payment method",style: Styles.headStyle4,)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
