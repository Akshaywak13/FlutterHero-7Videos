import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_7videos/theme_controller.dart/theme_controller.dart';

class Thememode extends StatefulWidget {
  const Thememode({super.key});

  @override
  State<Thememode> createState() => _ThememodeState();
}

class _ThememodeState extends State<Thememode> {
  Themecontroller controller = Get.put(Themecontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theme mode",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Row(
                children: [Text("Container")],
              ),
            ),
            SizedBox(
              height: 30,
            ),
           Obx(() =>  Switch(
              value: controller.isDarkTheme.value,
              onChanged: (s) {
                controller.changeTheme();
              },
            ))
          ],
        ),
      ),
    );
  }
}
