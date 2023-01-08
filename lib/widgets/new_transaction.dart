import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({super.key, required this.addTx});
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            TextButton(
                onPressed: () {
                  addTx(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                },
                child: const Text(
                  "Add Transactions",
                  style: TextStyle(color: Colors.purple),
                ))
          ],
        ),
      ),
    );
  }
}
