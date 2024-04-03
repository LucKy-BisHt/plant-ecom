import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/screens/details/components/mapPage.dart';

bool isLoading =  false;

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final TextEditingController _send = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Green Tracker',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "NOTE: Your plant tracker id will be provided inside the product box",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
              )),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Enter your product id",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _send,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter your tracker id",
                        fillColor: Colors.white24,
                        filled: true),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  _send.clear();
                  setState(() {
                    isLoading = true;
                  });
                  if(isLoading) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Center(child: CircularProgressIndicator()),
                                  Text(
                                    "Please wait while we're checking your id",
                                    style:
                                    TextStyle(color: Colors.black, fontSize: 22),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "It might take a moment",
                                    style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                                  )
                                ],
                              )),
                        );
                      },
                    );
                  }

                  Future.delayed(Duration(seconds: 5), () {
                    setState(() {
                      isLoading = false;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapPageBody(),
                        ));
                  });

                },
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.shade300),
                    child: Center(child: Icon(Icons.send_rounded))),
              ),
              // Text('Geolocation '),
            ],
          ),
        ),
      ),
    );
  }
}
