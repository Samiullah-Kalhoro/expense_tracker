import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction_model.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key, required this.transactions});

  final List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "\$${tx.amount}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.purple,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  DateFormat.yMMMd().format(tx.date),
                  style: const TextStyle(
                    fontSize: 11.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ]),
        );
      }).toList(),
    );
  }
}
