import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  TransactionUser();
  List<Transaction> get transactions => _transactions;
  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(widget.transactions),
        TransactionForm(),
      ],
    );
  }
}
