import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Aloe Vera",
            country: "Himachal",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Body(flower_price: 200, country_name: "India", flower_name: "Aloe Vera",),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Agave",
            country: "Uttrakhand",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Body(flower_price: 200, country_name: "India", flower_name: "Agave",),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Prakriti",
            country: "kerala",
            price: 440,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => Body(flower_price: 200, country_name: "India", flower_name: "Prakriti",)));
            }
          ),
        ],
      )
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.4,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(image),
              GestureDetector(
                onTap: press,
                child: Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "$title\n".toUpperCase(),
                                  style: Theme.of(context).textTheme.button),
                              TextSpan(
                                text: "$country".toUpperCase(),
                                style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Spacer(),
                        Text(
                          '\₹$price',
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(color: kPrimaryColor),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
