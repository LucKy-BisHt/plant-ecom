import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  String? iconSun;
  String? iconTemp;
  String? waterIcon;
  String? airIcon;
  String? sunDesc;
  String? tempDesc;
  String? waterDesc;
  String? airDesc;
  ImageAndIcons({
    Key? key,
    required this.size, this.iconSun, this.iconTemp, this.waterIcon,this.airIcon, this.tempDesc, this.sunDesc, this.airDesc, this.waterDesc
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 1,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    GestureDetector(child: IconCard(icon: "assets/icons/sun.svg"), onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('$iconSun'),
                            content: Text('$sunDesc'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },),
                    GestureDetector(child: IconCard(icon: "assets/icons/icon_2.svg"), onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('$iconTemp'),
                            content: Text('$tempDesc'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },),
                    GestureDetector(child: IconCard(icon: "assets/icons/icon_3.svg"), onTap :(){
                      showDialog(
                      context: context,
                      builder: (BuildContext context) {
                      return AlertDialog(
                      title: Text('$iconTemp'),
                      content: Text('$tempDesc'),
                      actions: <Widget>[
                      TextButton(
                      onPressed: () {
                      Navigator.of(context).pop();
                      },
                      child: Text('Close'),
                      ),
                      ],
                      );
                      },
                      );
                    },),
                    GestureDetector(child: IconCard(icon: "assets/icons/icon_4.svg"),onTap :(){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('$iconTemp'),
                            content: Text('$tempDesc'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    }),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
