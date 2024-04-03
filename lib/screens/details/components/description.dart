import 'package:flutter/material.dart';

class FlowerDescription extends StatelessWidget {
  String? flower_name;
  String? flower_description;
  FlowerDescription({super.key, required this.flower_name, this.flower_description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(child: Container(child: Text("$flower_name"),)),
          Center(child: Text("${flower_description}"),)

        ],
      ),
    );
  }
}
