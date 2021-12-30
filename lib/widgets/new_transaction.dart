import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // return Container();
    return Card(
      // create drop shadow
      elevation: 5,
      // if you want to add margin/ padding use container
      child: Container(
        // padding: Padding(),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              // onChanged: (val) {
              //   // "titleInput" taken
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,

              // onChanged: (val) {
              //   // "titleInput" taken
              //   amountInput = val;
              // },
            ),
            FlatButton(
              child: const Text('Add Transaction'),
              onPressed: () {
                // debugPrint(titleInput);
                print(titleController.text);
                print(amountController.text);
              },
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
