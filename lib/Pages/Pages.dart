import 'package:Card_UI/Pages/Card.dart';
import 'package:Card_UI/Pages/Expenses.dart';
import 'package:Card_UI/Pages/Header.dart';
import 'package:Card_UI/Pages/data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpensesSection())
        ],
      ),
    );
  }
}
