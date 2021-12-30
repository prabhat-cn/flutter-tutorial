import 'package:flutter/material.dart';
import '../new_transaction.dart';
import '../transaction_list.dart';
import '../../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  // "_userTransactions" is the pointer of the list
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

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Column(
      children: <Widget>[
        // Add "NewTransaction" Widget called
        NewTransaction(_addNewTransaction),

        // Add "TransactionList" Widget called
        TransactionList(_userTransactions),
      ],
    );
  }
}
