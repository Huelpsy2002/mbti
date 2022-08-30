// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_final_fields, unused_import

import 'package:flutter/material.dart';
import 'package:mbti/models/backgroundpaint.dart';
import 'package:mbti/models/cardlist.dart';

import 'models/infopage.dart';
import 'package:mbti/mbtichar.dart';

class homescreen extends StatefulWidget {
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  late PageController _pageController;

  int _currentpage = 0;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(initialPage: _currentpage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  Color color() {
    return Color.fromARGB(255, 68, 117, 69);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.emergency_sharp,
                      size: 35,
                      color: color(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "It's so \nincredible to \nfinally be",
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -2,
                          fontFamily: 'PTMono'),
                    ),
                    Text("understood.",
                        style: TextStyle(
                            color: color(),
                            fontSize: 45,
                            fontFamily: 'PTMono')),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: CustomPaint(
                      size: Size(400, 400),
                      painter: CurvedPainter(),
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(
                top: 180,
              ),
              child: AspectRatio(
                  aspectRatio: 0.8,
                  child: PageView.builder(
                      itemCount: datalist.length,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        return carousalview(index);
                      })),
            ),
            Positioned(
                top: 640,
                left: 86,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: color()),
                    height: 50,
                    width: 190,
                    child: Center(
                        child: Text(
                      'Explore',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'PTSerif'),
                    ))))
          ],
        ),
      ),
    );
  }

  Widget carousalview(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
        }
        return Transform.rotate(
            angle: 3.14 * value,
            child: card(datalist[index], imageinfo[index], mbtilist[index],
                disciption_list[index]));
        // return card(datalist[index], imageinfo[index], mbtilist[index]);
      },
    );
    // return card(datalist[index], imageinfo[index], mbtilist[index]);
  }

  Widget card(DataModel data, datainfo datainfo, mbtiinfo info,
      description description) {
    return GestureDetector(
      onTap: () {
        //  Navigator.push(context, MaterialPageRoute(builder: (context) {
        //     return infopage(
        //         datainfo.imageinfo, datainfo.mbtititle, info.mbtiinfoo);
        //   }));
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return mbtichar(data.imagepath, datainfo.imageinfo,
              datainfo.mbtititle, info.mbtiinfoo, description.desciption);
        }));
      },
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(70.0),
              child: Container(
                margin: EdgeInsets.only(top: 110),
                width: 150,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(data.imagepath), fit: BoxFit.contain),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 2,
                          color: Color.fromARGB(255, 109, 150, 111))
                    ]),
              ),
            ),
          ),

          //   child: Text(
          //     data.title.toUpperCase(),
          //     style:
          //         TextStyle(color: color(), fontFamily: 'PTMono', fontSize: 22),
          //   ),
          // ),
        ],
      ),
    );
  }
}
