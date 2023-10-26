
import 'package:better_place/utils/app_info_list.dart';
import 'package:better_place/utils/app_layout.dart';
import 'package:better_place/utils/app_style.dart';
import 'package:better_place/widget/column_layout.dart';
import 'package:better_place/widget/layout_builder_widget.dart';
import 'package:better_place/widget/ticket_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> airTicket;
  final bool? isColor;
  const TicketView({super.key, required this.airTicket, this.isColor});


  @override
  Widget build(BuildContext context) {
    final size =  AppLayout.getSize(context);
    return SizedBox(
     width: size.width*0.85,
      height: GetPlatform.isAndroid==true?167:169,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // showing card ticket
            Container(
              decoration: BoxDecoration(
                color: isColor == null? Color(0xff526799): Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21)),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(airTicket['from']['code'],
                        style:isColor ==  null? Styles.headStyle3.copyWith(color: Colors.white): Styles.headStyle3,),
                      Expanded(child: Container()),
                      TicketContainer(isColor:true),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child:AppLayoutBuilderWidget(section: 6),
                          ),
                          Center(child: Transform.rotate(angle: 1.5,child:Icon(Icons.local_airport_rounded,
                              color: isColor == null? Colors.white: Color(0xFFBACCF7)),)),
                        ],
                      )),
                      TicketContainer(isColor: true),
                      Expanded(child: Container()),
                      Text(airTicket['to']['code'],
                        style: isColor == null? Styles.headStyle3.copyWith(color: Colors.white):Styles.headStyle3),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,child: Text(airTicket['from']['name'],
                        style: isColor==null? Styles.headStyle4.copyWith(color: Colors.white): Styles.headStyle4,),
                      ),
                      Text(airTicket['flying_time'],
                        style: isColor == null? Styles.headStyle4.copyWith(color: Colors.white): Styles.headStyle4,),
                      SizedBox(
                        width: 100,child: Text(airTicket['to']['name'],textAlign: TextAlign.end,
                        style: isColor== null? Styles.headStyle4.copyWith(color: Colors.white):Styles.headStyle4,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor==null? Styles.orangeColor: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor== null? Colors.grey.shade300:Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                      return  Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                          width: 5,height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color:isColor==null?Colors.grey.shade300: Colors.white
                            ),
                          ),
                        )),
                      );
                    },

                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor== null? Colors.grey.shade300:Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor== null? Styles.orangeColor: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),
                    bottomRight: Radius.circular(isColor==null?21:0)),
              ),
              padding: EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: airTicket['date'], secondText: "Date",
                          alignment: CrossAxisAlignment.start,  isColor: false,),
                      AppColumnLayout(firstText: airTicket['deperture_time'], secondText: "Departure Time",
                        alignment: CrossAxisAlignment.center,  isColor: false,),

                      AppColumnLayout(firstText: airTicket['Airline'], secondText: "Airline",
                        alignment: CrossAxisAlignment.end,  isColor: false,),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
