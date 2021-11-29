import 'dart:ffi';

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback? delete; // told to use void call back?  function instead of just funciton
  QuoteCard({required this.quote, required this.delete});



  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 8,),
            TextButton.icon(
                onPressed: delete,
                label: Text('delete quote'),
                icon: Icon(Icons.delete),
            ),

          ],
        ),
      ),
    );
  }
}