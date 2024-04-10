import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_7videos/bottomsheet.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.offAll(Bottomsheet());
        },
         child: Text("HomePage")),
      ),
    );
  }
}