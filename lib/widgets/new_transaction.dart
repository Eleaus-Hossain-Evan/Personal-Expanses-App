import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function newTx;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction({Key? key, required this.newTx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              // onChanged: (val) {
              //   titleInput = val;
              // },
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              // onChanged: (val) => amountInput = val,
              controller: amountController,
            ),
            MaterialButton(
              child: Text("Add Transaction"),
              textColor: Colors.purpleAccent,
              onPressed: () => newTx(
                titleController.text,
                double.parse(amountController.text),
              ),
            )
          ],
        ),
      ),
    );
  }
}
