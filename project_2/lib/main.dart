import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  home: IDcard(),

));
class IDcard extends StatefulWidget {
  const IDcard({Key? key}) : super(key: key);

  @override
  State<IDcard> createState() => _IDcardState();
}

class _IDcardState extends State<IDcard> {

  int level = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
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
                fontSize: 16,

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
              'Level',
              style: TextStyle(
                color:Colors.teal,
                letterSpacing: 1.5,
                fontSize: 16,

              ),
            ),
            SizedBox(height: 5,),
            Text(
              '$level',
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


