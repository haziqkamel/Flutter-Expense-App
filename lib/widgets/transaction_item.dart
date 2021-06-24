import 'dart:math';

import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatefulWidget {
  const TransactionItem({
    Key key,
    @required this.transactions,
    @required this.deleteTx,
  }) : super(key: key);

  final Transaction transactions;
  final Function deleteTx;

  @override
  _TransactionItemState createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  Color _bgColor;

  @override
  void initState() {
    var availableColors = [
      Colors.red[100],
      Colors.green[100],
      Colors.blue[100],
      Colors.purple[100],
      Colors.amber[100],
    ];

    _bgColor = availableColors[Random().nextInt(5)];
    print(_bgColor);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _bgColor,
          foregroundColor: Colors.black,
          radius: 30,
          child: Padding(
            padding: EdgeInsets.all(6),
            child: FittedBox(
              child: Text(
                '\$${widget.transactions.amount}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          widget.transactions.title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(widget.transactions.dateTime),
        ),
        trailing: MediaQuery.of(context).size.width > 460
            // ignore: deprecated_member_use
            ? FlatButton.icon(
                icon: Icon(Icons.delete),
                textColor: Theme.of(context).errorColor,
                onPressed: () => widget.deleteTx(widget.transactions.id),
                label: Text('Delete'),
              )
            : IconButton(
                icon: Icon(Icons.delete),
                color: Theme.of(context).errorColor,
                onPressed: () => widget.deleteTx(widget.transactions.id),
              ),
      ),
    );
  }
}
