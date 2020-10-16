/*
*  main.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:wsh_it/landing_page_widget/landing_page_widget.dart';
import 'package:wsh_it/login_widget/login_widget.dart';
import 'package:wsh_it/my_profile_widget/my_profile_widget.dart';
import 'package:wsh_it/sign_up_widget/sign_up_widget.dart';



void main() {
  runApp(App());}


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: LandingPageWidget(),
      routes : <String, WidgetBuilder>{
        '/landingpage' : (BuildContext context) => new App(),
        '/signuppage' : (BuildContext context) => new  SignUpWidget(),
         '/homepage' : (BuildContext context)  => new  MyProfileWidget()

      }
    );
  }
}