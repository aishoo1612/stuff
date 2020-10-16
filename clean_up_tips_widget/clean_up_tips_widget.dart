/*
*  clean_up_tips_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:wsh_it/clean_up_tips_widget/group27_four_item_widget.dart';
import 'package:wsh_it/clean_up_tips_widget/group27_item_widget.dart';
import 'package:wsh_it/clean_up_tips_widget/group27_three_item_widget.dart';
import 'package:wsh_it/clean_up_tips_widget/group27_two_item_widget.dart';
import 'package:wsh_it/values/values.dart';


class CleanUpTipsWidget extends StatelessWidget {
  
  void onGoBackPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                "assets/images/background-21.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 22,
              top: 19,
              right: 33,
              bottom: 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 50,
                      height: 50,
                      child: FlatButton(
                        onPressed: () => this.onGoBackPressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 34, top: 33),
                      child: Text(
                        "Clean Up tips",
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
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 25, top: 25, bottom: 46),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 280,
                          childAspectRatio: 3.83562,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) => Group27ItemWidget(),
                      ),
                    ),
                  ),
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