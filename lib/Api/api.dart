// To parse this JSON data, do
//
//     final channel = channelFromJson(jsonString);

import 'dart:convert';

Channel? channelFromJson(String str) => Channel.fromJson(json.decode(str));


class Channel {
    Channel({
        this.table,
    });

    List<Table?>? table;

    factory Channel.fromJson(Map<String, dynamic> json) => Channel(
        table:  List<Table?>.from(json["table"]!.map((x) => Table.fromJson(x))),
    );
}

class Table {
    Table({
        this.idStanding,
        this.intRank,
        this.idTeam,
        this.strTeam,
        this.strTeamBadge,
        this.idLeague,
        this.strLeague,
        this.strSeason,
        this.strForm,
        this.strDescription,
        this.intPlayed,
        this.intWin,
        this.intLoss,
        this.intDraw,
        this.intGoalsFor,
        this.intGoalsAgainst,
        this.intGoalDifference,
        this.intPoints,
        this.dateUpdated,
    });

    String? idStanding;
    String? intRank;
    String? idTeam;
    String? strTeam;
    String? strTeamBadge;
    String? idLeague;
    String? strLeague;
    String? strSeason;
    String? strForm;
    String? strDescription;
    String? intPlayed;
    String? intWin;
    String? intLoss;
    String? intDraw;
    String? intGoalsFor;
    String? intGoalsAgainst;
    String? intGoalDifference;
    String? intPoints;
    DateTime? dateUpdated;

    factory Table.fromJson(Map<String, dynamic> json) => Table(
        idStanding: json["idStanding"],
        intRank: json["intRank"],
        idTeam: json["idTeam"],
        strTeam: json["strTeam"],
        strTeamBadge: json["strTeamBadge"],
        idLeague: json["idLeague"],
        strLeague: json["strLeague"],
        strSeason: json["strSeason"],
        strForm: json["strForm"],
        strDescription: json["strDescription"],
        intPlayed: json["intPlayed"],
        intWin: json["intWin"],
        intLoss: json["intLoss"],
        intDraw: json["intDraw"],
        intGoalsFor: json["intGoalsFor"],
        intGoalsAgainst: json["intGoalsAgainst"],
        intGoalDifference: json["intGoalDifference"],
        intPoints: json["intPoints"],
        dateUpdated: DateTime.parse(json["dateUpdated"]),
    );

    
}

