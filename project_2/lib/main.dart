import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  home: IDcard(),

));
class IDcard extends StatelessWidget {
  const IDcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Id Card'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/id.jpg'),
                radius: 45,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.red,

            ),
            Text(
              'Name',
              style: TextStyle(
                color:Colors.teal,
                letterSpacing: 1.5,
                fontSize: 18,

              ),
            ),
            SizedBox(height: 5,),
            Text(
              'Tejas Rote',
              style: TextStyle(
                color:Colors.amber,
                letterSpacing: 1.5,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Age: ',
              style: TextStyle(
                color:Colors.teal,
                letterSpacing: 1.5,
                fontSize: 18,

              ),
            ),
            SizedBox(height: 5,),
            Text(
              '18',
              style: TextStyle(
                color:Colors.amber,
                letterSpacing: 1.5,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.redAccent,
                ),
                SizedBox(width: 10,),
                Text(
                  'demo.email@gmail.com',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

