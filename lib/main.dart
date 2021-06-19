import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expenses App'),
        ),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.amber,
                  child: Text('CHART'),
                ),
              ),
              UserTransaction(),
            ]),
      ),
    );
  }
}
