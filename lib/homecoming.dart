// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeComing extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeComingState createState() => _HomeComingState();
}

class _HomeComingState extends State<HomeComing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('details of person'),
      ),
      body: Stack(
        children:[
          Hero(
            tag: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
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
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'lib/images/loving.png',
            ),
          ),
          Positioned(
            bottom: 80,
            child:
                Text(''''remember the day  when you first kiss me?i do remember! \n lets go back  to  college days!''',maxLines: 10,),
          ),
        ],
      ),
    );
  }
}
