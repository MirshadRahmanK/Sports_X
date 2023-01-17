import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
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
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Score').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('NowPlaying')
                    .snapshots(),
                builder: (context, nowPlaying) {
                  if (nowPlaying.hasData) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(children: [
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              child: Image(
                                image: AssetImage('assets/messi.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 110, left: 20),
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
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "All",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
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
                            team1: snapshot.data!.docs[0]['Team One Name'],
                            team2: snapshot.data!.docs[0]['Team Two Name'],
                            team1Image: snapshot.data!.docs[0]['Team One Logo'],
                            team2Image: snapshot.data!.docs[0]['Team Two Logo'],
                            time: snapshot.data!.docs[0]['Time']),
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
                                  imageurl2: nowPlaying.data!.docs[0]
                                      ['Team two logo'],
                                  imageurl1: nowPlaying.data!.docs[0]
                                      ['Team one logo'],
                                  score1: nowPlaying.data!.docs[0]
                                      ['Team one score'],
                                  score2: nowPlaying.data!.docs[0]
                                      ['Team two score'],
                                  teamname2: nowPlaying.data!.docs[0]
                                      ['Team two name'],
                                  teamname: nowPlaying.data!.docs[0]
                                      ['Team one name']);
                            },
                          ),
                        )
                      ]),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(color: Colors.yellow),
                    );
                  }
                });
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.yellow,
              ),
            );
          }
        });
  }
}
