import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App 02 - Expenses App'),
        ),
        body: Column(
          children: [
            Card(
              child: Text('CHART'),
              color: Colors.amber,
            ),
            Card(
              child: Text('TX'),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
