// import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String? location; // location name of the UI
  String? time; // time at location
  String? flag; // url to asset flag
  String? url;// location url for api endpoint
  bool? isDaytime; // true or false if day time or not // says bool can not be not null

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try {
      Response response = await get(Uri.parse('http://www.worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(data);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3); // had to add not null
      // print(datetime);
      // print(offset);


      // create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);

      // set the time property
      // time = now.toString();
      isDaytime = now.hour> 6 && now.hour<20 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch(e){
      print('caught the error: $e');
      time = 'could not get time data';
    }
  }
}


