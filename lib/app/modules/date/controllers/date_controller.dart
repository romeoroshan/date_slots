import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DateController extends GetxController {
  //TODO: Implement DateController
  late BuildContext context;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    setDates();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  RxString selected_date="0".obs;
  void updateButton(String dateValue){
    selected_date.value=dateValue;
    print(selected_date);
  }
  DateTime today=DateTime.now();
  List<String> dates=[];
  setDates(){
    for(int i=0;i<=11;i++){
      String month;
      DateTime newDate=DateTime(today.year,today.month-i,today.day);
      if(newDate.month<10){
        month="0${newDate.month} شهر";
      }
      else{
        month="${newDate.month} شهر";
      }
      String year="${newDate.year} سنة ";
      String date=month+year;
      dates.add(date);
    }
    print(dates);
  }



  void increment() => count.value++;
}
