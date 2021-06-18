import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactionList = [
    Transaction(
      id: 't1',
      title: 'Title',
      amount: 10.93,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Title2',
      amount: 11.91,
      dateTime: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expenses App'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.amber,
                  child: Text('CHART'),
                ),
              ),
              Column(
                children: transactionList.map((tx) {
                  return Card(
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.amber,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$${tx.amount}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tx.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              DateFormat('dd/MMM/yyyy HH:mm')
                                  .format(tx.dateTime),
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ]),
                    ]),
                  );
                }).toList(),
              ),
            ]),
      ),
    );
  }
}
