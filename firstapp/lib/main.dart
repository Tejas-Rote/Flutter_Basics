import 'package:flutter/material.dart';

// video - 4
// void main() => runApp(MaterialApp(
//   home: Text('Hello world ')
// ));

// video -5&6
void main() => runApp(MaterialApp(
      home: Home(),
    ));



// video 7

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body:
      //---video-10
      Padding(
        padding: EdgeInsets.all(90),
        child: Text('Hello with padding'),
      ),

      // Container(
      //   margin: EdgeInsets.all(30.0),
      //   padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
      //   // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      //   color:Colors.grey[350],
      //   child: Text('Hello'),
      // ),


      // -----


      //--- video-9

      // Center(

        // child:IconButton(
        //   onPressed: (){
        //     print('clicked');
        //   },
        //   icon: Icon(Icons.alternate_email),
        //   color: Colors.amber,
        // ),
        //
        //
        // // ElevatedButton.icon(
        // //   onPressed: (){
        // //     print('pressed');
        // //   },
        // //   icon: Icon(
        // //     Icons.mail
        // //   ),
        // //   label: Text('Mail me'),
        // //   style: ElevatedButton.styleFrom(
        // //     primary: Colors.amber,
        // //     onPrimary: Colors.black,
        // //   ),
        // //     // color:Colors.limeAccent,
        // // ),
        //
        // // TextButton(
        // //   onPressed: (){
        // //     print('You pressed');
        // //   },
        // //   child: Text('Press Me'),
        // //   // color: Colors.limeAccent,
        // // ),
        //
        // // ElevatedButton(
        // //   onPressed:() {} ,
        // //   child: Text('Press Me'),
        // //   // color: Colors.limeAccent,
        // // ),
        // //
        // // Icon(
        // //   Icons.airport_shuttle,
        // //   color: Colors.blue,
        // //   size: 60.0,
        // // ),

        // ----





        // -- video-8
        // child:Image.asset('assets/space-2.jpg')
        // Image(
        //   image:AssetImage('assets/space-1.jpg'),
          // image:NetworkImage('https://images.unsplash.com/photo-1637266047032-31ac3fd14ce2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQwfGlVSXNuVnRqQjBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
        // ),
        // --


        // wrap using center widget to centre anything
        // child: Text('Hello',
        //     style: TextStyle(
        //       fontSize: 40,
        //       fontWeight: FontWeight.bold,
        //       letterSpacing: 3,
        //       color: Colors.indigo[30],
        //       fontFamily: 'Inconsolata',
        //     )),

        // use child property while nesting
      // ),





      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click '),
        backgroundColor: Colors.green,
      ),
    );
  }
}
