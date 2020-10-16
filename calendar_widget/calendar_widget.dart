/*
*  calendar_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:wsh_it/find_an_event_widget/find_an_event_widget.dart';
import 'package:wsh_it/values/values.dart';


class CalendarWidget extends StatelessWidget {
  
  void onFiltersValueChanged(BuildContext context) {
  
  }
  
  void onSearchTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => FindAnEventWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                "assets/images/background.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 30,
              top: 31,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 24,
                      height: 25,
                      child: FlatButton(
                        onPressed: () => this.onSearchTwoPressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/go-back.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 24, top: 47),
                      child: Text(
                        "Filter By:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Product Sans",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 282,
                      height: 42,
                      margin: EdgeInsets.only(top: 9),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(219, 0, 0, 0),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Container(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}