import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'models/transaction.dart';
// import './widgets/transaction_list.dart';
// import './widgets/new_transaction.dart';
import './widgets/user_transactions.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Expence App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // Taken from Transaction widget
  // final List<Transaction> transaction = [
  //   // list of Transaction
  //   Transaction(
  //       id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
  //   Transaction(
  //       id: 't2',
  //       title: 'Weekly Groceries',
  //       amount: 16.53,
  //       date: DateTime.now()),
  //   Transaction(
  //       id: 't3', title: 'Weekly Fruits', amount: 15.63, date: DateTime.now()),
  // ];
  // Properties
  // late String titleInput;
  // late String amountInput;
  // TextEditingController is the class provided by controller
  // final titleController = TextEditingController();
  // final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expence App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.start,

        // This is for "Text('LIST OF TX')"
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: const <Widget>[
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: SizedBox(
                width: double.infinity,
                child: Text('CHART!'),
              ),
              elevation: 5,
            ),

            // Card(
            //   color: Colors.blue,
            //   child: SizedBox(
            //     width: double.infinity,
            //     child: Text('CHART!'),
            //   ),
            // "Container" controls all designs alignments
            // child: Container(
            //   width: 100,
            //   child: const Text('CHART!'),
            //   color: Colors.blue,
            // ),
            // create drop shadow
            // elevation: 5,
          ),
          // Widget here
          UserTransactions(),
          // Multiple inputs
          // Add "NewTransaction" Widget called
          // NewTransaction(),

          // Add "TransactionList" Widget called
          // const TransactionList(),

          // Column(
          //   children: transaction.map((trax) {
          //     return Card(
          //       // fetched all transactions
          //       child: Text(trax.title),
          //     );
          //   }).toList(),
          // ),
          // Column(
          //   children: <Widget>[
          //     // three transactions
          //     Card(),
          //     Card(),
          //     Card(),
          //   ],
          // ),
          // Card(
          //   color: Colors.red,
          //   child: Text('LIST OF TX'),
          //   // for back shadow
          //   elevation: 5,
          // ),
        ],
      ),
    );
  }
}
