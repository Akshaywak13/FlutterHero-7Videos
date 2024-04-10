import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_7videos/theme_controller.dart/number_controller.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {

NumberController controller = Get.put(NumberController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Example 2"),
          ],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: controller.inputName,
            decoration:InputDecoration(
              fillColor: Colors.deepPurple.shade200,
              filled: true,
              hintText: "Enter your name",
            ),
          ),
        ),
        SizedBox(height: 10,),
  Obx(() =>       Text(controller.name.value,
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          controller.setName();
        },
         child: Text("SUBMIT"),)
      ],
    );
  }
}