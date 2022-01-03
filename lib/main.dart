import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'models/transaction.dart';
import './widgets/transaction_list.dart';
import './widgets/new_transaction.dart';
import './widgets/chart.dart';

// import 'widgets/extra-files/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expence App',
        // color define globaly
        // theme: ThemeData(
        //   primarySwatch: Colors.green,
        //   // floating action button
        //   accentColor: Colors.amber,
        //   fontFamily: 'Schyler',
        // ),
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              toolbarTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(
                      subtitle2: const TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
                  .bodyText2,
              titleTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(
                      subtitle2: const TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
                  .headline6),
          fontFamily: 'Schyler',
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(secondary: Colors.amber),
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
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

  List<Transaction> get _recentTransactions {
    return _userTransactions
        .where((tx) => tx.date.isAfter(
              DateTime.now().subtract(
                const Duration(
                  days: 7,
                ),
              ),
            ))
        .toList();
  }

  void _addNewTransaction(String traxTitle, double traxAmount) {
    // "Final" if create one value not create again
    final newTrax = Transaction(
        id: DateTime.now().toString(),
        title: traxTitle,
        amount: traxAmount,
        date: DateTime.now());
    setState(() {
      _userTransactions.add(newTrax);
    });
  }

  void _startAddNewTransaction(BuildContext cTrax) {
    showModalBottomSheet(
      context: cTrax,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addNewTransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: const Text(
          'Expence App',
          style: TextStyle(fontFamily: 'RobotoMono'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => _startAddNewTransaction(context),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      // to make scrollable list
      body: SingleChildScrollView(
        child: Column(
          // This is for "Text('LIST OF TX')"
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Chart(_recentTransactions),
            // Widget here
            TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
    );
  }
}
