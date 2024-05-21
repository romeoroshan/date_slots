import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:date/app/modules/date/widgets/date_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/date_controller.dart';

class DateView extends GetView<DateController> {
  const DateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    controller.context = context;

    return Scaffold(
      appBar: AppBar(
        title: const Text('DateView',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.06,
            child: ListView.builder(
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.dates.length,
                itemBuilder:(context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: DateButton(date: controller.dates[index], activeIndex: index,controller: controller,),
                  );
                }
            ),
          ),
          Text("Hi")
        ],
      ),
      // CustomRadioButton(
      //   defaultSelected: "05 شهر2024 سنة ",
      //   selectedBorderColor: Colors.orange,
      //   enableShape: true,
      //   margin: EdgeInsets.symmetric(horizontal: 5),
      //   height: 50,
      //   width: 200,
      //   radius: 20,
      //   unSelectedBorderColor: Colors.orange,
      //   shapeRadius: 20,
      //   elevation: 0,
      //   absoluteZeroSpacing: true,
      //   unSelectedColor: Colors.white,
      //   buttonLables: controller.dates,
      //   buttonValues: controller.dates,
      //   buttonTextStyle: ButtonTextStyle(
      //       selectedColor: Colors.white,
      //       unSelectedColor: Colors.orange,
      //       textStyle: TextStyle(fontSize: 16)),
      //   radioButtonValue: (value) {
      //     print(value);
      //   },
      //   selectedColor: Colors.orange,
      // ),
    );
  }
}
