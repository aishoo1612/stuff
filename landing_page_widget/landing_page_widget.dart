/*
*  landing_page_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:wsh_it/login_widget/login_widget.dart';
import 'package:wsh_it/sign_up_widget/sign_up_widget.dart';
import 'package:wsh_it/values/values.dart';


class LandingPageWidget extends StatelessWidget {
  
  void onLoginPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  
  void onSignUpPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                "assets/images/background-2.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 65,
              top: 100,
              right: 65,
              bottom: 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 24, right: 41),
                    child: Text(
                      "WSH",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Ailerons",
                        fontWeight: FontWeight.w400,
                        fontSize: 120,
                        letterSpacing: -18,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 42,
                    margin: EdgeInsets.only(bottom: 15),
                    child: FlatButton(
                      onPressed: () => this.onLoginPressed(context),
                      color: AppColors.primaryElement,
                      shape: RoundedRectangleBorder(
                        side: Borders.primaryBorder,
                        borderRadius: Radii.k21pxRadius,
                      ),
                      textColor: Color.fromARGB(255, 51, 51, 51),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "LOG IN",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontFamily: "Product Sans",
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    margin: EdgeInsets.only(left: 1, bottom: 149),
                    child: FlatButton(
                      onPressed: () => this.onSignUpPressed(context),
                      color: AppColors.primaryElement,
                      shape: RoundedRectangleBorder(
                        side: Borders.primaryBorder,
                        borderRadius: Radii.k21pxRadius,
                      ),
                      textColor: Color.fromARGB(255, 51, 51, 51),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "SIGN UP",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontFamily: "Product Sans",
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7, right: 5),
                    child: Text(
                      "@WorldSavingHustle",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 47,
              top: 234,
              right: 47,
              child: Text(
                "Fighting for Nature, Animals & Humans",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Product Sans",
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}