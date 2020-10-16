import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-41.0, 0.0),
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
            offset: Offset(62.0, 547.0),
            child:
                // Adobe XD layer: 'icons8-conference-f…' (shape)
                Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(59.0, 296.0),
            child:
                // Adobe XD layer: 'calendar' (shape)
                Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(237.0, 287.0),
            child:
                // Adobe XD layer: 'icons8-detective-96…' (shape)
                Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(239.0, 560.0),
            child:
                // Adobe XD layer: 'icons8-male-user-96…' (shape)
                Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 31.0),
            child:
                // Adobe XD layer: 'goback' (shape)
                Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-60.0, -13.0),
            child: SizedBox(
              width: 516.0,
              height: 300.0,
              child: SingleChildScrollView(
                  child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 65,
                    color: const Color(0xffbeb6b6),
                  ),
                  children: [
                    TextSpan(
                      text: 'Quick',
                    ),
                    TextSpan(
                      text: ' \n',
                      style: TextStyle(
                        fontSize: 100,
                        color: const Color(0xfffffcfc),
                      ),
                    ),
                    TextSpan(
                      text: 'SEARCHES\n',
                      style: TextStyle(
                        color: const Color(0xfffffcfc),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
