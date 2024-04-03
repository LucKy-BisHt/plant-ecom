import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/mapScreen.dart';

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey, // Assign the global key to the Scaffold
      drawer: Drawer(
        // Add your drawer content here
        child: ListView(
          padding: EdgeInsets.all(5),
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage("assets/images/nature.jpg"),radius: 30,),
                    SizedBox(height: 2,),
                    Text(
                      maxLines: 1,
                      'Check your contribution',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Center(child: Text("In NATURE", style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold, color: Colors.white ),))
                  ],
                )
              ),
            ),

            ListTile(
              title: GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MapScreen(),)),
                child: Card(
                  color: Colors.green.shade200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 8, bottom: 8),
                      child: Text('Tap to track the orders', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),),
                    )),
              ),

            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
                height: size.height * 0.2,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        left: kDefaultPadding,
                        right: kDefaultPadding,
                        bottom: 36 + kDefaultPadding,
                      ),
                      height: size.height * 0.2 - 27,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.menu, color: Colors.white),
                            onPressed: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                          ),
                          Text(
                            'PLANTIFY',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, right: 3),
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage("assets/images/plantifylogo.png"),
                              radius: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                    color: kPrimaryColor.withOpacity(0.5),
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                ),
                              ),
                            ),
                            SvgPicture.asset("assets/icons/search.svg"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TitleWithMoreBtn(title: "Recommended", press: () {}),
              RecomendsPlants(),
              TitleWithMoreBtn(title: "Featured Plants", press: () {}),
              FeaturedPlants(),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
