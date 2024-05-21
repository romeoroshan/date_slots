import 'package:date/app/modules/date/controllers/date_controller.dart';
import 'package:date/app/modules/date/views/date_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DateButton extends GetView {
  final String date;
  final int activeIndex;
  DateController controller;
  DateButton({super.key,required this.date,required this.activeIndex,required this.controller});

  @override
  Widget build(BuildContext context) {

    double mediaWidth = MediaQuery.of(context).size.width;
    double mediaHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        print("clicked");
        controller.updateButton(activeIndex.toString());
      },
      child: Obx(() {
        if (controller.selected_date == activeIndex.toString()) {
          return Container(
            width: mediaWidth * .35,
            height: mediaHeight * .06,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: .5, color: Colors.orange),
            ),
            child: Center(child: Text(date,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
          );
        } else {
          return Container(
            width: mediaWidth * .35,
            height: mediaHeight * .06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: .5, color: Colors.orange),
            ),
            child: Center(child: Text(date,style: TextStyle(color: Colors.orange),)),
          );
        }
      }),
    );
  }
}
