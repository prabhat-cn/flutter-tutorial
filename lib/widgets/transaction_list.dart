import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  // Make constructor
  const TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    // return Container();
    return SizedBox(
      // to manage list height
      height: 300,
      // only list will be scrolled & Single Column
      child: ListView.builder(
        itemBuilder: (ctx, index) {
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
                    '\$${transactions[index].amount.toStringAsFixed(2)}',
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
                      transactions[index].title,
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
                      DateFormat.yMMMd().format(transactions[index].date),
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
        },
        itemCount: transactions.length,
        // children: transactions.map((trax) {

        // }).toList(),
      ),
    );
  }
}
