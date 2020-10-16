/*
*  my_profile_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:wsh_it/values/values.dart';
import 'package:wsh_it/sign_up_widget/sign_up_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';



class MyProfileWidget extends StatelessWidget {
  
  void onIcons8CircledMenuPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
    FutureBuilder(future:Provider.of(context).auth.getCurrentUser(),
            builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.done){
                return displayUserInformation(context,snapshot);
              }
              else{
                CircularProgressIndicator();
              }
            } ,);
          
            return Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                title: Text(
                  "My Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "Product Sans",
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    onPressed: () => this.onIcons8CircledMenuPressed(context),
                    icon: Image.asset("assets/images/icons8-circled-menu-96.png",),
                  ),
                ],
                backgroundColor: Color.fromARGB(255, 37, 37, 37),
              ),
              body: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    stops: [
                      0,
                      1,
                    ],
                    colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                    ],
                  ),
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
                        "assets/images/background-17.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: -1,
                      top: 103,
                      right: 0,
                      bottom: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,

                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 117, right: 115, bottom: 11),
                              child: Image.asset(
                                "assets/images/picture-3.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 117, right: 115, bottom: 24),
                            child: Text(
                              "",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "Product Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Container(
                            height: 251,
                            margin: EdgeInsets.only(left: 49, right: 47, bottom: 42),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 251,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        right: 0,
                                        bottom: 0,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              height: 69,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 15),
                                                      child: Text(
                                                        "You have picked",
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
                                                  Container(
                                                    height: 39,
                                                    margin: EdgeInsets.only(top: 6),
                                                    child: Stack(
                                                      alignment: Alignment.center,
                                                      children: [
                                                        Positioned(
                                                          left: 0,
                                                          top: 0,
                                                          right: 0,
                                                          child: Container(
                                                            height: 39,
                                                            decoration: BoxDecoration(
                                                              color: Color.fromARGB(255, 250, 250, 250),
                                                              border: Border.all(
                                                                width: 2,
                                                                color: Color.fromARGB(255, 255, 255, 255),
                                                              ),
                                                              borderRadius: BorderRadius.all(Radius.circular(19.5)),
                                                            ),
                                                            child: Container(),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 69,
                                                          top: 6,
                                                          right: 71,
                                                          child: Text(
                                                            "2490.32 Kg",
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: Color.fromARGB(255, 255, 255, 255),
                                                              fontFamily: "Product Sans",
                                                              fontWeight: FontWeight.w700,
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
                                            Spacer(),
                                            Container(
                                              height: 69,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Container(
                                                      margin: EdgeInsets.only(left: 15),
                                                      child: Text(
                                                        "Your score is",
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
                                                  Container(
                                                    height: 39,
                                                    margin: EdgeInsets.only(top: 6),
                                                    child: Stack(
                                                      alignment: Alignment.center,
                                                      children: [
                                                        Positioned(
                                                          left: 0,
                                                          top: 0,
                                                          right: 0,
                                                          child: Container(
                                                            height: 39,
                                                            decoration: BoxDecoration(
                                                              color: Color.fromARGB(255, 250, 250, 250),
                                                              border: Border.all(
                                                                width: 2,
                                                                color: Color.fromARGB(255, 255, 255, 255),
                                                              ),
                                                              borderRadius: BorderRadius.all(Radius.circular(19.5)),
                                                            ),
                                                            child: Container(),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 58,
                                                          top: 0,
                                                          right: 63,
                                                          child: Text(
                                                            "32,456 Points",
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: Color.fromARGB(255, 255, 255, 255),
                                                              fontFamily: "Product Sans",
                                                              fontWeight: FontWeight.w700,
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
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                margin: EdgeInsets.only(left: 15),
                                                child: Text(
                                                  "You have attended",
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
                                            Container(
                                              height: 39,
                                              margin: EdgeInsets.only(top: 6),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    right: 0,
                                                    child: Container(
                                                      height: 39,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(255, 250, 250, 250),
                                                        border: Border.all(
                                                          width: 2,
                                                          color: Color.fromARGB(255, 255, 255, 255),
                                                        ),
                                                        borderRadius: BorderRadius.all(Radius.circular(19.5)),
                                                      ),
                                                      child: Container(),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 79,
                                                    top: 6,
                                                    right: 84,
                                                    child: Text(
                                                      "52 Events",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 255, 255, 255),
                                                        fontFamily: "Product Sans",
                                                        fontWeight: FontWeight.w700,
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 53,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 53,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 37, 37, 37),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(89, 0, 0, 0),
                                        offset: Offset(0, -3),
                                        blurRadius: 6,
                                      ),
                                    ],
                                  ),
                                  child: Container(),
                                ),
                              ],
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
          Widget displayUserInformation(context,snapshot){
            
              return  Text("${snapshot.data.displayName}");
          }
        }
        
        mixin Provider {
      static of(BuildContext context) {}
}