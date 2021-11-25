import 'package:flutter/material.dart';

// video - 4 
// void main() => runApp(MaterialApp(
//   home: Text('Hello world ')
// ));

// video -5
void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Home'),
      centerTitle: true,
      backgroundColor:Colors.red[400] ,
    ),
    body:Center( //wrap using center widget to centre anything
      child: Text(
        'Hello',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
          color: Colors.indigo[30],
          fontFamily: 'Inconsolata',
        ) 
        ),
       //use child proprty while nesting
    ), 
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text('Click'),
      backgroundColor: Colors.green,
    ),
  )
));



