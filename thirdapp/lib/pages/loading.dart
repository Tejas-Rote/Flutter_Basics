import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:thirdapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // void getTime() async {
  //
  //   // Response response = await get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));
  //   // print(response.body);
  //   // jsonDecode(response.body);
  //   // told to use uri as can not use url directly, argument string can not be directly assigned to parameter type int
  //   // Map data = jsonDecode(response.body);
  //   // print(data);
  //   // print(data['title']);
  //
  //   // Response response = await get(Uri.parse("http://www.worldtimeapi.org/api/timezone/Europe/London"));
  //  Response response = await get(Uri.parse("http://www.worldtimeapi.org/api/timezone/Europe/Moscow"));
  //  Map data = jsonDecode(response.body);
  // // print(data);
  //
  // // get properties from data
  //   String datetime = data['datetime'];
  //   String offset = data['utc_offset'].substring(1,3); // had to add not null
  //   // print(datetime);
  //   // print(offset);
  //
  //
  //
  //   // create a datetime object
  //   DateTime now = DateTime.parse(datetime);
  //   now = now.add(Duration(hours: int.parse(offset)));
  //   print(now);
  // }



    // String time = 'loading'; // says string cant be null

    void setupWorldTime() async{
      WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
      await instance.getTime();
      // Navigator.pushNamed(context, '/home');
      Navigator.pushReplacementNamed(context, '/home',arguments:{
        'location' : instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDaytime': instance.isDaytime,
      });


      // print(instance.time);
      // setState(() {
      //   time = instance.time!; // says add null check to add '!' after it
      //
      // });

    }


  @override
  void initState() {
    super.initState();
    // getTime();
    setupWorldTime();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body:Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
      // Padding(
      //   padding: EdgeInsets.all(50),
      //   child:
      //   Text('loading') ,
      // ),
      // Text('loading screen'),
    );
  }
}