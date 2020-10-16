/*
*  group27_four_item_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:wsh_it/values/values.dart';


class Group27FourItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 280,
      height: 73,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: 253,
              height: 5,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Container(),
            ),
          ),
          Positioned(
            left: 2,
            top: 0,
            right: 27,
            child: Text(
              "Always wash your hands----\n-------------------------------",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}