import 'package:flutter/material.dart';
import './Rakshit.dart';
import './Priyanshi.dart';
import './Rasana.dart';
import './Shatakshu.dart';

class Component11 extends StatelessWidget {
  Component11({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(591.0, 0.0),
          child:
              // Adobe XD layer: 'RK' (shape)
              Container(
            width: 148.0,
            height: 148.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(74.0),
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(197.0, 0.0),
          child:
              // Adobe XD layer: 'priyaa' (shape)
              Container(
            width: 148.0,
            height: 148.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(74.0),
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(788.0, 10.0),
          child:
              // Adobe XD layer: 'rasana' (shape)
              Container(
            width: 148.0,
            height: 148.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(74.0),
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(394.0, 0.0),
          child:
              // Adobe XD layer: 'BeautyPlus_20191006…' (shape)
              Container(
            width: 148.0,
            height: 148.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(384.0),
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        // Adobe XD layer: 'me' (shape)
        Container(
          width: 148.0,
          height: 148.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(74.0),
            image: DecorationImage(
              image: const AssetImage(''),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
