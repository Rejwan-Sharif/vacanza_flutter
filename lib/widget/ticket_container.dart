import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketContainer extends StatelessWidget {
  final bool? isColor;
  const TicketContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: isColor== null? Colors.white : Colors.white),
      ),
    );
  }
}

