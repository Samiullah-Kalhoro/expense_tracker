import 'package:flutter/material.dart';
import 'package:personal_expense_tracker/widgets/user_transactions.dart';


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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // final amountController = TextEditingController();
  // String titleInput = "";
  // String amountInput = "";
  // final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Personal Expense Tracker',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.yellow,
              elevation: 5,
              child: Text(
                'CHART!',
              ),
            ),
          ),
          UserTransactions(),
        ],
      ),
    );
  }
}