import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // int counter=0;

  // void getData() async{
  //   // simulate a network request for a username
  //   String name = await Future.delayed(Duration(seconds: 3), () {
  //     return 'name';
  //     // print('name');
  //   });
  //
  //   // simulate a network request to get bio for the username
  //   String bio = await Future.delayed(Duration(seconds: 2), () {
  //     return 'bio';
  //     // print('bio');
  //   });
  //
  //   print('$name - $bio');
  // }
  //
  //
  // @override
  // void initState() {
  //   super.initState();
  //   print('initstate function ran');
  //   getData();
  //   print('demo text');
  // }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
