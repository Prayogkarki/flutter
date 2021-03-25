import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/home.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{
  String location; //location name for UI
  String time; // time in that location
  String flag; //url to an assets flag icon
  String url;  // location for API end point
  bool isDaytime;

WorldTime({this.location,this.flag,this.url});

Future<void>  getTime() async {

    //make the request
    Response response=await get('http://worldtimeapi.org/api/timezone');

    Map data=jsonDecode(response.body);

    //get properties from data
    String datetime=data['datetime'];
    String offset=data['utc_offset'].subString(1,3);

    //create date time object
    now=now.add(Duration(hours: int.parse(offset)));
    DateTime now=DateTime.parse(datetime);


    //set the time properties

    time=DateFormat.jm().format(now);




  }



}