import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_7videos/theme_controller.dart/number_controller.dart';

class Example3 extends StatefulWidget {
  const Example3({super.key});

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {

NumberController controller =Get.put(NumberController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Example 3"),
        SizedBox(height: 10,),
       Obx(() =>  Slider(value: controller.slideValue.value,
         onChanged:(s){
          controller.slideValue.value = s;
         },
         min: 0,
         max: 100,
         ),),
         Obx(() => Text("Value is : ${controller.slideValue.value.toStringAsFixed(0)}",
         style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
         ),)
         )
      ],
    );
  }
}