import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.addTx, {super.key});

  final amountController = TextEditingController();
  final titleController = TextEditingController();
  final Function addTx;

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
              // onChanged: (value) => titleInput = value,
            ),
            TextFormField(
              controller: amountController,
              decoration: const InputDecoration(labelText: "Amount"),
              // onChanged: (value) => amountInput = value,
            ),
            TextButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              child: const Text("Add Transaction"),
            )
          ],
        ),
      ),
    );
  }
}
