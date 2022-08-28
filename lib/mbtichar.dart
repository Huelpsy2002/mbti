import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 30),
          child: Container(
            width: 280,
            height: 380,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagetitlepath))),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 36, left: 10),
          child: Column(children: [
            Text(
              mbtititle,
              style: TextStyle(
                  color: color(),
                  fontSize: 35,
                  letterSpacing: -2,
                  fontFamily: 'PTMono'),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
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
              return infopage(imageinfo, mbtititle, mbtiinfo);
            }));
          },
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
        // SizedBox(
        //   height: 10,
        // ),
        Expanded(
          child: Container(
            child: CustomPaint(
              size: Size(400, (400).toDouble()),
              painter: RPSCustomPainter(),
            ),
          ),
        ),
      ]),
    );
  }
}

// class CurvedPainterd extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint()
//       ..color = Color.fromARGB(255, 234, 243, 236)
//       ..strokeWidth = 15;

//     var path = Path();

//     path.moveTo(0, size.height * 0.75);
//     path.quadraticBezierTo(size.width * 0.25, size.height * 0.1,
//         size.width * 0.5, size.height * 0.3);
//     path.quadraticBezierTo(size.width * 0.75, size.height * 0.4,
//         size.width * 1.0, size.height * 0.3);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromARGB(255, 234, 243, 236)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.2120000);
    path0.cubicTo(
        size.width * 0.3156250,
        size.height * 0.6445000,
        size.width * 0.3556250,
        size.height * 0.6670000,
        size.width * 0.4787500,
        size.height * 0.6800000);
    path0.quadraticBezierTo(size.width * 0.6056250, size.height * 0.6875000,
        size.width, size.height * 0.4300000);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(
        0, size.height * 0.8030000, 0, size.height * 0.2120000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
