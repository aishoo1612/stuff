/*
*  tab_group_ten_tab_bar_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wsh_it/find_an_event_widget/find_an_event_widget.dart';
import 'package:wsh_it/my_profile_widget/my_profile_widget.dart';
import 'package:wsh_it/regsiter_widget/regsiter_widget.dart';


class TabGroupTenTabBarWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _TabGroupTenTabBarWidgetState();
}


class _TabGroupTenTabBarWidgetState extends State<TabGroupTenTabBarWidget> {
  List<Widget> _tabWidgets = [
    RegsiterWidget(),
    MyProfileWidget(),
    FindAnEventWidget(),
  ];
  int _currentIndex = 0;
  
  void _onTabChanged(int index) => this.setState(() => _currentIndex = index);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: _tabWidgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color.fromARGB(255, 255, 255, 255),
        currentIndex: _currentIndex,
        onTap: (index) => this._onTabChanged(index),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/icons8-calendar-500-7.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/icons8-male-user-96-7.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/icons8-detective-96-7.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}