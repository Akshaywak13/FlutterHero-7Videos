import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_7videos/theme_controller.dart/number_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  NumberController numbercontroller = Get.put(NumberController());
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(numbercontroller.number.toString(),
            style: TextStyle(fontSize: 50),
            ),),
            ElevatedButton(onPressed: (){
              numbercontroller.number.value++;
              print(numbercontroller.number.value);
            },
             child: Text("+")),
             SizedBox(height: 10,),
             ElevatedButton(onPressed: (){
              numbercontroller.number.value--;
              print(numbercontroller.number.value);
             },
              child: Text("-"))
          ],
        ),
        
      ),
    );
  }
}