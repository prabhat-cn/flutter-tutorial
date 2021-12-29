import 'package:flutter/foundation.dart';

// normal class object
class Transaction {
  // late String id;
  // late String title;
  // late double amount;
  // late DateTime date;
  // String id;
  // String title;
  // double amount;
  // DateTime date;
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction(
      // @required decorator
      {@required required this.id,
      @required required this.title,
      @required required this.amount,
      @required required this.date});

  // Transaction(
  //     {required this.id,
  //     required this.title,
  //     required this.amount,
  //     required this.date});
}
