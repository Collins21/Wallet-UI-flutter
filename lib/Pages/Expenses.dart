import 'package:Card_UI/Pages/PieChart.dart';
import 'package:Card_UI/Pages/data.dart';
import 'package:flutter/material.dart';

class ExpensesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Expenses",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            SizedBox(width: 160),
            Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(children: [
                  Center(
                    child: Container(
                      child: Icon(Icons.chevron_left),
                    ),
                  )
                ])),
            SizedBox(width: 10),
            Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(children: [
                  Center(
                    child: Container(
                      child: Icon(Icons.chevron_right),
                    ),
                  )
                ])),
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses
                        .map((value) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                      radius: 5,
                                      backgroundColor:
                                          pieColors[expenses.indexOf(value)]),
                                  SizedBox(width: 5),
                                  Text(
                                    value['name'],
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                )),
            Expanded(flex: 5, child: PieChart())
          ],
        ),
      ],
    );
  }
}
