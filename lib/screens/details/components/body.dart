import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatefulWidget {
  String? flower_name;
  int flower_price;
  String? country_name;
  Body({this.flower_name, required this.flower_price, this.country_name});
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(
            size: size,
            iconSun: "Sun light Requirement ",
            sunDesc: "true ot false?",
            airIcon: "Wind requirement",
            airDesc: "wind flow value?",
            tempDesc: "Temperature ",
            iconTemp: "temp value",
            waterIcon: "Water per day",
            waterDesc: "value in litre?",
          ),
          TitleAndPrice(
              title: "${widget.flower_name}",
              country: "${widget.country_name}",
              price: widget.flower_price),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  // style: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.only(
                  //     topRight: Radius.circular(20),
                  //   ),
                  // ),

                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
