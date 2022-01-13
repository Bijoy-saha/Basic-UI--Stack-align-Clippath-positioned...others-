// ignore_for_file: prefer_const_constructors

import 'package:clippath/homecoming.dart';
import 'package:clippath/models.dart';
import 'package:flutter/material.dart';

class Subfile extends StatefulWidget {
  const Subfile({Key? key}) : super(key: key);

  @override
  _SubfileState createState() => _SubfileState();
}

class _SubfileState extends State<Subfile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () {
              // Navigator.of(context).pushNamed('/home');
              Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (context, a, b) => HomeComing()),
              );
            },
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // ignore: prefer_const_literals_to_create_immutables
                    colors: [Colors.orange, Colors.orangeAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            'lib/images/loving.png',
            scale: 1.5,
          ),
        ),
        Positioned(
          bottom: 30,
          left: 55,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'us',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Text(
                'wanna explore  world ?',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
