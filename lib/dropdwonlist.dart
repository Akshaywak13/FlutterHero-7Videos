import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_7videos/theme_controller.dart/number_controller.dart';

class Example4 extends StatefulWidget {
  const Example4({super.key});

  @override
  State<Example4> createState() => _Example4State();
}

class _Example4State extends State<Example4> {
  @override
  Widget build(BuildContext context) {
    NumberController controller = Get.put(NumberController());
    return Column(
      children: [
        Column(
          children: [
            Text("Example 4"),
            SizedBox(height: 10,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        Obx(() => DropdownButton(
                          value:controller.selectedValue.value,
                          items: [
                            DropdownMenuItem(
                            child: Text("GAYA"),
                            value: "gaya",
                            ),
                              DropdownMenuItem(
                            child: Text("AYODHYA"),
                            value: "ayodhya",
                            ),
                              DropdownMenuItem(
                            child: Text("MAHARASTRA"),
                            value: "maharastra",
                            ),
                              DropdownMenuItem(
                            child: Text("KALAS"),
                            value: "kalas",
                            ),
                              DropdownMenuItem(
                            child: Text("AKOLE"),
                            value: "akole",
                            ),
                            ],
                            
                            onChanged: (s){
                             controller.selectedValue.value = s!;
                            }),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Obx(() => Text("Selected:${controller.selectedValue.value} ",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ))
          ],
        ),
      ],
    );
  }
}