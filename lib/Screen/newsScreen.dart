import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsScree extends StatefulWidget {
  const NewsScree({super.key});

  @override
  State<NewsScree> createState() => _NewsScreeState();
}

class _NewsScreeState extends State<NewsScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Image(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    image: NetworkImage(
                        'https://e0.365dm.com/23/01/1600x900/skysports-dan-burn-newcastle_6020137.jpg?20230110225916'),
                    fit: BoxFit.cover,
                  ),
                  Text(
                      "Carabao Cup hits and misses: Newcastle celebrate and Marcus Rashford continues red-hot Man Utd form")
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
