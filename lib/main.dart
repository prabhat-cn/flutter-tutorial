import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'models/transaction.dart';
// import './widgets/transaction_list.dart';
// import './widgets/new_transaction.dart';
import './widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Expence App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // Taken from Transaction widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expence App'),
      ),
      // to make scrollable list
      body: SingleChildScrollView(
        child: Column(
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
            ),
            // Widget here
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
