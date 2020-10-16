import 'package:flutter/material.dart';
import './Component11.dart';
import './Component21.dart';

class Shatakshu extends StatelessWidget {
  Shatakshu({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-26.0, 0.0),
            child:
                // Adobe XD layer: 'background' (shape)
                Container(
              width: 456.8,
              height: 812.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(104.0, 137.0),
            child: Component11(),
          ),
          Transform.translate(
            offset: Offset(63.0, 25.0),
            child: Component21(),
          ),
          Transform.translate(
            offset: Offset(32.0, 343.0),
            child: SizedBox(
              width: 312.0,
              height: 469.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 50,
                    color: const Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: 'Shatakshi \nRaman\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nAlways on a \ncoffee run \n\n\nCatch her at @RamanShatakshi',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
