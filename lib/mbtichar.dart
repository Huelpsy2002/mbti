// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mbti/models/cardlist.dart';
import 'dart:ui' as ui;

import 'models/infopage.dart';

class mbtichar extends StatelessWidget {
  String imagetitlepath;
  String imageinfo;
  String mbtititle;
  String mbtiinfo;

  String description;

  mbtichar(this.imagetitlepath, this.imageinfo, this.mbtititle, this.mbtiinfo,
      this.description);
  Color color() {
    return Color.fromARGB(255, 68, 117, 69);
  }

  @override
  Widget build(BuildContext context) {
    late Color typecolor;
    var mbtitype = {
      "Analysts": ["Architect", "Logician", "Commander", "Debater"],
      "Diplomats": ["Advocate", "Mediator", "Protagonist", "Campaigner"],
      "Sentinels": ["Logistician", "Defender", "Executive", "Consul"],
      "Explorers": ["Virtuoso", "Adventurer", "Entrepreneur", "Entertainer"]
    };

    mbtitype.forEach((key, value) {
      for (var item in value) {
        if (mbtititle == item) {
          if (key == "Analysts") {
            typecolor = Color.fromARGB(255, 121, 84, 138);
          } else if (key == "Diplomats") {
            typecolor = Color.fromARGB(255, 32, 117, 50);
          } else if (key == "Sentinels") {
            typecolor = Color.fromARGB(255, 32, 123, 146);
          } else {
            typecolor = Color.fromARGB(255, 143, 134, 10);
          }
        }
      }
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 24, top: 140),
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagetitlepath))),
            ),
          ),
          Expanded(
            child: Container(
              child: CustomPaint(
                size: Size(400, (400).toDouble()),
                painter: RPSCustomPainter(typecolor),
              ),
            ),
          ),
        ]),
        Padding(
          padding: EdgeInsets.only(top: 250, left: 40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              mbtititle,
              style: TextStyle(
                  color: typecolor,
                  fontSize: 35,
                  letterSpacing: -2,
                  fontFamily: 'PTMono'),
            ),
            //debater,enterprentur,vertouso
            SizedBox(
              height: 8,
            ),

            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Text(
                description,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontFamily: 'PTMono'),
              ),
            )
          ]),
        ),
        SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return infopage(imageinfo, mbtititle, mbtiinfo, typecolor);
            }));
          },
          child: Padding(
            padding: EdgeInsets.only(top: 618, left: 148),
            child: Container(
              width: 70,
              height: 66,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300)),
              child: Center(
                child: Icon(
                  Icons.arrow_downward,
                  color: Colors.grey.shade600,
                  size: 28,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  var typecolor;
  RPSCustomPainter(this.typecolor);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = typecolor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.4278250);
    path0.cubicTo(
        size.width * 0.3470000,
        size.height * 0.7994500,
        size.width * 0.6753000,
        size.height * 0.8261750,
        size.width,
        size.height * 0.4210000);
    path0.quadraticBezierTo(size.width * 1.0195750, size.height * 0.5461750,
        size.width, size.height);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(size.width * -0.0160000, size.height * 0.8009500, 0,
        size.height * 0.4278250);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
