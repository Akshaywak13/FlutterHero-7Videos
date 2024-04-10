import 'package:flutter/material.dart';

class BottomSheetData extends StatefulWidget {
  const BottomSheetData({super.key});

  @override
  State<BottomSheetData> createState() => _BottomSheetDataState();
}

class _BottomSheetDataState extends State<BottomSheetData> {
  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade100,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("Data"),
                        ],
                      ),
                    ],
                  ),
                );
  }
}