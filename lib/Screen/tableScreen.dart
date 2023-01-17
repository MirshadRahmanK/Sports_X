import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sports_score/Api/api.dart';
import 'package:http/http.dart' as http;

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  bool isLoaded = false;

  Channel channel = Channel();
  getDataServer() async {
    var uri =
        'https://www.thesportsdb.com/api/v1/json/2/lookuptable.php?l=4328&s=2022-2023';
    var url = Uri.parse(uri);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      channel = Channel.fromJson(decodedJson);
      print(response.statusCode);
      print(channel.table![2]!.strLeague);
      setState(() {
        isLoaded = true;
      });
    } else {
      print('Status Code#############${response.statusCode}');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataServer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoaded
            ? Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: channel.table!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image(
                              image: NetworkImage(
                                  channel.table![index]!.strTeamBadge!)),
                          title: Text(channel.table![index]!.strTeam!),
                          trailing: Text(channel.table![index]!.intRank!),
                        );
                      },
                    ),
                  )
                ],
              )
            : Center(
                child: CircularProgressIndicator(color: Colors.yellow),
              ));
  }
}
