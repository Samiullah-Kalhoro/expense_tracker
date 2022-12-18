import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction_model.dart';

class TransactionList extends StatelessWidget {
  const TransactionList(
      {super.key, required this.transactions, required this.deleteTx});

  final Function deleteTx;
  final List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? Column(
            children: [
              Text(
                "No Transactions added yet!",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: Image.asset(
                  "assets/images/waiting.png",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          )
        : ListView.builder(
          
            itemBuilder: (context, index) {
              return Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: FittedBox(
                        child: Text('\$${transactions[index].amount}'),
                      ),
                    ),
                  ),
                  title: Text(
                    transactions[index].title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  subtitle: Text(
                    DateFormat.yMMMd().format(
                      transactions[index].date,
                    ),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Theme.of(context).errorColor,
                    ),
                    onPressed: () => deleteTx(transactions[index].id),
                  ),
                ),
              );
            },
            itemCount: transactions.length,
          );
  }
}
