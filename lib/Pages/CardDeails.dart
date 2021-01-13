import 'package:Card_UI/Pages/data.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/IMG_4822.PNG',
                scale: 8,
              )),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Center(
                  child: Container(
                      height: 40,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(5)))),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              margin: EdgeInsets.only(right: 30, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '**** **** ****',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(' 1930',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20, left: 20),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'PLATINUM CARD',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
