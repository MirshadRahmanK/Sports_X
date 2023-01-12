import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sports_score/Api/api.dart';
import 'package:sports_score/widget/nowScore.dart';
import 'package:sports_score/widget/scoreCard.dart';
import 'package:http/http.dart' as http;

class FootBallScreen extends StatefulWidget {
  const FootBallScreen({super.key});

  @override
  State<FootBallScreen> createState() => _FootBallScreenState();
}

class _FootBallScreenState extends State<FootBallScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: AssetImage('assets/messi.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110, left: 20),
              child: Container(
                height: 80,
                width: 150,
                color: Color.fromARGB(164, 0, 0, 0),
                child: Text(
                  "Uefa urges referecees TO protect players",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "12.30 Well",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
            ),
            Text(
              "All",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Next match",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        NowScoreWidget(
            amorpm: 'am',
            team1: 'Fulham',
            team2: 'Chelsea',
            team1Image:
                'https://ssl.gstatic.com/onebox/media/sports/logos/Gh7_5p3n364p4vxeM8FhNg_96x96.png',
            team2Image:
                'https://ssl.gstatic.com/onebox/media/sports/logos/fhBITrIlbQxhVB6IjxUO6Q_96x96.png',
            time: '1:30'),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Score",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              return ScoreCard(
                  imageurl2:
                      'https://ssl.gstatic.com/onebox/media/sports/logos/fhBITrIlbQxhVB6IjxUO6Q_96x96.png',
                  imageurl1:
                      'https://ssl.gstatic.com/onebox/media/sports/logos/z44l-a0W1v5FmgPnemV6Xw_96x96.png',
                  score1: '1',
                  score2: '0',
                  teamname2: 'Chelsea',
                  teamname: 'Man city');
            },
          ),
        )
      ]),
    );
  }
}
