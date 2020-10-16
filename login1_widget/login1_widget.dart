/*
*  login1_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:wsh_it/login_widget/login_widget.dart';
import 'package:wsh_it/sign_up_widget/sign_up_widget.dart';
import 'package:wsh_it/values/values.dart';


class Login1Widget extends StatelessWidget {
  
  void onGoBackPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpWidget()));
  
  void onLoginPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  
  void onSendAgainPressed(BuildContext context) {
  
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
                "assets/images/background.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 22,
              top: 19,
              right: 70,
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
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 92, right: 12),
                    child: Text(
                      "Ah, Registered!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 18, right: 9),
                    child: Text(
                      "Verification Code was Sent to \nyour email address",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        height: 1.11111,
                      ),
                    ),
                  ),
                  Container(
                    height: 39,
                    margin: EdgeInsets.only(left: 20, top: 37, right: 6),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 250, 250, 250),
                      border: Border.all(
                        width: 1,
                        color: Color.fromARGB(255, 112, 112, 112),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(19.5)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 20,
                          margin: EdgeInsets.only(left: 27, right: 19),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Code",
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
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 89,
                      height: 22,
                      margin: EdgeInsets.only(top: 8, right: 5),
                      child: FlatButton(
                        onPressed: () => this.onSendAgainPressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "Send Again",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: "Product Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 37,
                    margin: EdgeInsets.only(left: 89, right: 40, bottom: 99),
                    child: FlatButton(
                      onPressed: () => this.onLoginPressed(context),
                      color: Color.fromARGB(255, 250, 250, 250),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 112, 112, 112),
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(18.5)),
                      ),
                      textColor: Color.fromARGB(255, 51, 51, 51),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 51, 51, 51),
                          fontFamily: "Product Sans",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
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