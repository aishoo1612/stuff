import 'package:flutter/material.dart';

class Component21 extends StatelessWidget {
  Component21({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(52.0, 0.0),
          child: Text(
            'Meet The\n',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 35,
              color: const Color(0xffbeb7b7),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, 38.0),
          child: Text(
            'CREATORS\n',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 50,
              color: const Color(0xfffff1f1),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
