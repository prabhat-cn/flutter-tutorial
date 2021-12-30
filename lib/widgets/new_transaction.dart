import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  // const NewTransaction({Key? key}) : super(key: key);
  // function coming from props user_transaction
  final Function addTrax;

  const NewTransaction(this.addTrax);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

// submit function
  void submitData() {
    final enteredTitle = titleController.text;
    // amount is not string is double
    final enteredAmount = double.parse(amountController.text);
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    widget.addTrax(
      enteredTitle,
      enteredAmount,
    );
  }

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
              onSubmitted: (_) => submitData(),

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
              keyboardType: TextInputType.number,
              // for ios
              // keyboardType:
              //     const TextInputType.numberWithOptions(decimal: true),
              // onSubmitted: submitData,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   // "titleInput" taken
              //   amountInput = val;
              // },
            ),
            FlatButton(
              child: const Text('Add Transaction'),
              onPressed: submitData,
              // onPressed: () {

              //   debugPrint(titleInput);
              //   print(titleController.text);
              //   print(amountController.text);
              //   "amount" is double
              //   addTrax(
              //     titleController.text,
              //     double.parse(amountController.text),
              //   );
              // },
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
