/*
*  feedback_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:wsh_it/values/values.dart';


class FeedbackWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
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
              left: 22,
              top: 19,
              bottom: 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/images/goback-4.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 25, top: 82),
                      child: Text(
                        "Write to us ;)",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Product Sans",
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 266,
                      height: 33,
                      margin: EdgeInsets.only(top: 31),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 250, 250),
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(255, 112, 112, 112),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(16.5)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 19,
                            margin: EdgeInsets.only(left: 27, right: 18),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Subject",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 266,
                      height: 139,
                      margin: EdgeInsets.only(top: 12),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 250, 250),
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(255, 112, 112, 112),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(21)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 218,
                            height: 121,
                            margin: EdgeInsets.only(left: 27, top: 7),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Message",
                                contentPadding: EdgeInsets.all(0),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              autocorrect: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 132,
                      height: 37,
                      margin: EdgeInsets.only(top: 29),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 250, 250),
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(255, 112, 112, 112),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(181, 0, 0, 0),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(18.5)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SEND",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 51, 51, 51),
                              fontFamily: "Product Sans",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "@WorldSavingHustle",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
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