import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  const NewTransaction(this.addTx, {super.key});

  final Function addTx;

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final amountController = TextEditingController();

  final titleController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    widget.addTx(
      enteredTitle,
      enteredAmount,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Title"),
              onFieldSubmitted: (_) => submitData(),
            ),
            TextFormField(
              controller: amountController,
              decoration: const InputDecoration(labelText: "Amount"),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onFieldSubmitted: (_) => submitData(),
            ),
            TextButton(
              onPressed: () {
                submitData();
              },
              child: const Text("Add Transaction"),
            ),
          ],
        ),
      ),
    );
  }
}
