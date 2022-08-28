// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'cardlist.dart';

class infopage extends StatelessWidget {
  String imagepah;
  String title;
  String mbtiinfo;
  infopage(this.imagepah, this.title, this.mbtiinfo);

  Color color() {
    return Color.fromARGB(255, 68, 117, 69);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          width: 340,
          height: 190,
          decoration: BoxDecoration(

              // color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: ExactAssetImage(imagepah), fit: BoxFit.fill)),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Container(
                width: 110,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                child: Center(
                    child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'PTSerif',
                    fontSize: 17,
                    color: Colors.grey[700],
                  ),
                )),
              ),
            ),
            Row(children: [
              Padding(
                  padding: EdgeInsets.only(
                    left: 60,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.grey.shade400,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 5, bottom: 4),
                  child: Text(
                    "9.3 k",
                    style: TextStyle(color: Colors.grey.shade700),
                  ))
            ]),
            SizedBox(
              width: 16,
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(right: 6, bottom: 4),
                child: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 20, bottom: 4),
                  child: Text(
                    "230 k",
                    style: TextStyle(color: Colors.grey.shade700),
                  ))
            ]),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "$title Personality",
            style: TextStyle(
                color: color(),
                fontSize: 35,
                letterSpacing: -2,
                fontFamily: 'PTMono'),
          ),
        ),
        // Divider(),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Introudction",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 24,
                            fontFamily: 'PTSerif'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(mbtiinfo,
                          style: TextStyle(
                              height: 1.6,
                              wordSpacing: 2,
                              color: Colors.grey[800],
                              fontSize: 20,
                              fontFamily: 'PTSerif')),
                    ])),
          ),
        )
      ]),
    );
  }
}
