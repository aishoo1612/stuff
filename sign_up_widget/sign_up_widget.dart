/*
*  sign_up_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wsh_it/landing_page_widget/landing_page_widget.dart';
import 'package:wsh_it/login1_widget/login1_widget.dart';
import 'package:wsh_it/services/user_mgmt.dart';
import 'package:wsh_it/styles/style_2.dart';
import 'package:wsh_it/values/values.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;

class SignUpWidget extends StatefulWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<FirebaseUser> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);
    Future<String> getCurrentUID() async {
      return (await _auth.currentUser()).uid;
    }

    Future getCurrentUser() async {
      return await _auth.currentUser();
    }

    return user;
  }

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  void initiateFacebookLogin() async {
    setState(() {
      isLoading = true;
    });
    var facebookLoginResult =
        await facebookLogin.logInWithReadPermissions(['email']);

    switch (facebookLoginResult.status) {
      case FacebookLoginStatus.error:
        onLoginStatusChanged(false);
        break;
      case FacebookLoginStatus.cancelledByUser:
        onLoginStatusChanged(false);
        break;
      case FacebookLoginStatus.loggedIn:
        var graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture.height(200)&access_token=${facebookLoginResult.accessToken.token}');

        var profile = json.decode(graphResponse.body);
        print(profile.toString());

        onLoginStatusChanged(true, profileData: profile);
        break;
    }
  }

  _logout() async {
    await facebookLogin.logOut();
    onLoginStatusChanged(false);
    print("Logged out");
  }

  var uName;

  var uEmail;
  var uPassword;

  var uPhone;

  bool isLoggedIn = false;
  bool isLoading = false;
  var profileData;

  var facebookLogin = FacebookLogin();

  void onLoginStatusChanged(bool isLoggedIn, {profileData}) {
    setState(() {
      isLoading = false;
      this.isLoggedIn = isLoggedIn;
      this.profileData = profileData;
    });
  }

  void onGoogleLogoPngOpenPressed(BuildContext context) {}

  void onIcons8Facebook240Pressed(BuildContext context) {}

  void onSignUpPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => Login1Widget()));

  void onGoBackPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => LandingPageWidget()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                "assets/images/background-5.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 22,
              top: 19,
              right: 47,
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
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 12, bottom: 15),
                      child: Text(
                        "Sign Up!",
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
                  Container(
                    height: 205,
                    margin: EdgeInsets.only(left: 25),
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
                                height: 33,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 250, 250),
                                  border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 112, 112, 112),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.5)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Name",
                                    contentPadding: EdgeInsets.only(left: 15),
                                    border: InputBorder.none,
                                    suffixIcon: Opacity(
                                      opacity: 0.45,
                                      child: Image.asset(
                                        "assets/images/icons8-name-52.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      uName = value;
                                    });
                                  },
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
                              Container(
                                height: 33,
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 250, 250),
                                  border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 112, 112, 112),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.5)),
                                ),
                                child: Container(
                                  height: 20,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Phone Number",
                                      contentPadding: EdgeInsets.only(left: 15),
                                      border: InputBorder.none,
                                      suffixIcon: Opacity(
                                        opacity: 0.45,
                                        child: Image.asset(
                                          "assets/images/icons8-phone-48.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        uPhone = value;
                                      });
                                    },
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
                              ),
                              Container(
                                height: 33,
                                margin: EdgeInsets.only(top: 52),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 250, 250),
                                  border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 112, 112, 112),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.5)),
                                ),
                                child: Container(
                                  width: 202,
                                  height: 20,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      contentPadding: EdgeInsets.only(left: 15),
                                      border: InputBorder.none,
                                      suffixIcon: Opacity(
                                        opacity: 0.45,
                                        child: Image.asset(
                                          "assets/images/icons8-password-52-3.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        uPassword = value;
                                      });
                                    },
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontFamily: "Product Sans",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                    obscureText: true,
                                    maxLines: 1,
                                    autocorrect: false,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 33,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 250, 250),
                                  border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 112, 112, 112),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.5)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Confirm Password",
                                    contentPadding: EdgeInsets.only(left: 15),
                                    border: InputBorder.none,
                                    suffixIcon: Opacity(
                                      opacity: 0.45,
                                      child: Image.asset(
                                        "assets/images/icons8-tick-box-192.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontFamily: "Product Sans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                  obscureText: true,
                                  maxLines: 1,
                                  autocorrect: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 33,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 250, 250, 250),
                              border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 112, 112, 112),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.5)),
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Positioned(
                                  left: 17,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email ID",
                                      contentPadding: EdgeInsets.all(0),
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        uEmail = value;
                                      });
                                    },
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
                                Positioned(
                                  right: 22,
                                  child: Opacity(
                                    opacity: 0.45,
                                    child: Image.asset(
                                      "assets/images/icons8-email-52-3.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 132,
                      height: 37,
                      margin: EdgeInsets.only(top: 21),
                      child: FlatButton(
                        onPressed: () => {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: uEmail, password: uPassword)
                              .then((signedInUser) {
                            UserManagement()
                                .storeNewUser(signedInUser, context);
                          }).catchError((e) {
                            print(e);
                          })
                        },
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
                          "SIGN UP",
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
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 140, right: 114, bottom: 14),
                    child: Text(
                      "-OR-",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 119, right: 92, bottom: 15),
                    child: Text(
                      "Sign in with",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
/*                      FlatButton(
                        onPressed: () => facebookLogin.isLoggedIn
                            .then((isLoggedIn) => isLoggedIn ? _logout() : {}),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "Loki",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),*/
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () => facebookLogin.isLoggedIn
                            .then((isLoggedIn) => isLoggedIn ? _logout() : {}),
                        child: Expanded(
                          child: Image.asset(
                            "assets/images/icons8-facebook-240.png",
                          ),
                        ),
                      ),
                      FlatButton(
//                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        padding: EdgeInsets.all(0),
                        onPressed: () => widget
                            ._handleSignIn()
                            .then((FirebaseUser user) => print(user))
                            .catchError((e) => print(e)),
                        child: Expanded(
                          child: Image.asset(
                            "assets/images/google-logo-png-open-2000.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                  /*Container(
                    height: 45,
                    margin: EdgeInsets.only(left: 99, right: 73, bottom: 17),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 45,
                            height: 45,
                            child:
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 35,
                          height: 35,
                          child:
                        ),
                      ],
                    ),
                  ),*/
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "@WorldSavingHustle",
                      textAlign: TextAlign.center,
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
