import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NumberController extends GetxController{

  RxInt number = 0.obs;

TextEditingController inputName = TextEditingController();
RxString name = "Flutter hero".obs;

RxDouble slideValue = 10.0.obs;

RxString selectedValue ="gaya".obs;

void setName(){
  name.value = inputName.text;
  inputName.clear();
}

}