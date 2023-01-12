import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NowScoreWidget extends StatelessWidget {
  String team1;
  String team2;
  String team1Image;
  String team2Image;
  String time;
  String amorpm;

  NowScoreWidget(
      {required this.amorpm,
        required this.team1,
      required this.team2,
      required this.team1Image,
      required this.team2Image,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xfffd4f2d),
              Color(0xfffd4f2d),
              Color(0xffbdc322),
            ]),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Column(
                children: [
                  Text(
                    "LIVE",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "am",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Column(
                children: [
                  Image(height: 30, width: 30, image: NetworkImage(team1Image)),
                  SizedBox(
                    height: 10,
                  ),
                  Image(height: 30, width: 30, image: NetworkImage(team2Image))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    child: Text(
                      team1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    child: Text(
                      team2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
