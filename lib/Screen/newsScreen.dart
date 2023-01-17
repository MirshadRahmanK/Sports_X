import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('News').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: snapshot.data!.docs.length,
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
                                  snapshot.data!.docs[0]['News Image']),
                              fit: BoxFit.cover,
                            ),
                            Text(snapshot.data!.docs[0]['News Text'])
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(color: Colors.yellow),
              );
            }
          }),
    );
  }
}
