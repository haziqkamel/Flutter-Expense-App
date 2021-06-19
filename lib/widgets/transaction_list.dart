import 'package:flutter/material.dart';
import 'package:flutter_app_02/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: transactions.map((tx) {
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
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  tx.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat('dd/MMM/yyyy HH:mm').format(tx.dateTime),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ]),
            ]),
          );
        }).toList(),
      ),
    );
  }
}
