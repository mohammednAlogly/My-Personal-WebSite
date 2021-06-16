import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProDesk extends StatelessWidget {
  var bur = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Portfolio 🏆',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Portfolio, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
            style: TextStyle(color: Colors.grey, fontSize: 22),
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 350,
              width: 1000,
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 450,
                    height: 300,
                    padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white.withOpacity(0.5),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10.0,
                            spreadRadius: 5,
                            offset: Offset(
                              5.0, // Move to right 10  horizontally
                              5.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/icon.png',
                          width: 250,
                          height: 175,
                        ),
                        Text(
                          'Nirlo',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 170),
                              child: InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", ["#"]);
                                  },
                                  child: Image.asset(
                                    'assets/images/app-store.png',
                                    height: 30,
                                    width: 30,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12),
                              child: InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", ["#"]);
                                  },
                                  child: Image.asset(
                                    'assets/images/google-play.png',
                                    height: 30,
                                    width: 30,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  /*Container(
                    width: 450,
                    height: 300,
                    padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white.withOpacity(0.5),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10.0,
                            spreadRadius: 5,
                            offset: Offset(
                              5.0, // Move to right 10  horizontally
                              5.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.bloggerB,
                          size: 170,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Blog',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                            onTap: () {
                              js.context.callMethod(
                                  "open", ["https://naveenjujaray.js.org"]);
                            },
                            child: Text(
                              'Check it out !',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.green[900]),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ),*/
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AchieveTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Portfolio 🏆',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Portfolio, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 450,
                        height: 300,
                        padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 5,
                                offset: Offset(
                                  5.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icon.png',
                              width: 250,
                              height: 175,
                            ),
                            Text(
                              'Nirlo',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 170),
                                  child: InkWell(
                                      onTap: () {
                                        js.context.callMethod("open", ["#"]);
                                      },
                                      child: Image.asset(
                                        'assets/images/app-store.png',
                                        height: 30,
                                        width: 30,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: InkWell(
                                      onTap: () {
                                        js.context.callMethod("open", ["#"]);
                                      },
                                      child: Image.asset(
                                        'assets/images/google-play.png',
                                        height: 30,
                                        width: 30,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      /*Container(
                        width: 450,
                        height: 300,
                        padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 5,
                                offset: Offset(
                                  5.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.bloggerB,
                              size: 170,
                              color: Colors.redAccent,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Blog',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            InkWell(
                                onTap: () {
                                  js.context.callMethod(
                                      "open", ["https://naveenjujaray.js.org"]);
                                },
                                child: Text(
                                  'Check it out !',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green[900]),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ),*/
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AchieveMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Portfolio 🏆',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Portfolio, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 432,
                        height: 282,
                        padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 5,
                                offset: Offset(
                                  5.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icon.png',
                              width: 250,
                              height: 175,
                            ),
                            Text(
                              'Nirlo',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 7.0),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 130),
                                  child: InkWell(
                                      onTap: () {
                                        js.context.callMethod("open", ["#"]);
                                      },
                                      child: Image.asset(
                                        'assets/images/app-store.png',
                                        height: 25,
                                        width: 25,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: InkWell(
                                      onTap: () {
                                        js.context.callMethod("open", ["#"]);
                                      },
                                      child: Image.asset(
                                        'assets/images/google-play.png',
                                        height: 25,
                                        width: 25,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      /*Container(
                        width: 400,
                        height: 250,
                        padding: new EdgeInsets.fromLTRB(20, 20, 20, 20),
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10.0,
                                spreadRadius: 5,
                                offset: Offset(
                                  5.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.bloggerB,
                              size: 120,
                              color: Colors.redAccent,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Blog',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            InkWell(
                                onTap: () {
                                  js.context.callMethod(
                                      "open", ["https://naveenjujaray.js.org"]);
                                },
                                child: Text(
                                  'Check it out !',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.green[900]),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ),*/
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
