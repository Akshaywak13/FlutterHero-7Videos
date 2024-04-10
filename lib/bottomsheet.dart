import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hero_7videos/aboutpage.dart';
import 'package:getx_hero_7videos/bottomsheetdata.dart';
import 'package:getx_hero_7videos/dropdwonlist.dart';
import 'package:getx_hero_7videos/example2.dart';
import 'package:getx_hero_7videos/example3.dart';
import 'package:getx_hero_7videos/homePage.dart';
import 'package:getx_hero_7videos/theme_controller.dart/theme_mode.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(BottomSheetData());
                },
                child: Text("Open Bottom sheet"),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Get.defaultDialog(
                  title: "Alert Box",
                  cancel: Text("Cancel"),
                  confirm: Text("Confirm"),
                  onCancel: (){},
                  onConfirm: (){},
                  content: Column(
                    children: [
                      Text("This is good news")
                    ],
                  )
                );
              },
               child: Text("OPen Dialog Box")),
               SizedBox(height: 10,),
               ElevatedButton(onPressed: (){
                Get.to(AboutPage(),
                transition: Transition.zoom,
                );
          
               },
                child: Text("Go To About Page"),
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  Get.to(HomePage());
                }, 
                child: Text("Stae man")),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  Get.to(Thememode());
                },
                 child: Text("Theme Mode")),
                SizedBox(height: 20,),
               const Example2(),
                SizedBox(height: 10,),
                Example3(),
                SizedBox(height: 10,),
                Example4(),
            ],
            
          ),
        ),
        
      ),
    );
  }
}
