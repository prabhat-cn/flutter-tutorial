import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

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
  final List<Transaction> transaction = [
    // list of Transaction
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Weekly Fruits', amount: 15.63, date: DateTime.now()),
  ];
  // Properties
  // late String titleInput;
  // late String amountInput;
  // TextEditingController is the class provided by controller
  final titleController = TextEditingController();
  final amountController = TextEditingController();
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

        children: <Widget>[
          const SizedBox(
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
          // Multiple inputs
          Card(
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
          ),
          Column(
            children: transaction.map((trax) {
              return Card(
                // fetched all transactions
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      // for border & Style
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      )),
                      padding: const EdgeInsets.all(10),
                      // "amount" is double so ".toString()"
                      child: Text(
                        // fetch amount
                        // trax.amount.toString(),
                        // "A:" is whitespace
                        '\$${trax.amount}',
                        style: const TextStyle(
                          // static property

                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          trax.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // "amount" is not string so ".toString()"
                        Text(
                          // trax.date.toString()
                          // DateFormat().format(trax.date),
                          // DateFormat('yyyy/MM/dd').format(trax.date),
                          // String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
                          DateFormat.yMMMd().format(trax.date),
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 5,
              );
            }).toList(),
          ),
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
