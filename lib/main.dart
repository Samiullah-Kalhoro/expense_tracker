import 'package:flutter/material.dart';
import 'package:personal_expense_tracker/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<Transaction> transactions = [
    Transaction(
      id: "t1",
      title: "New Shoes",
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t1",
      title: "Weekly Groceries",
      amount: 16.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Personal Expense Tracker',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.yellow,
              elevation: 5,
              child: Text(
                'CHART!',
              ),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(children: [
                  Container(
                    child: Text(
                      tx.amount.toString(),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        tx.title,
                      ),
                      Text(
                        tx.date.toString(),
                      )
                    ],
                  )
                ]),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
