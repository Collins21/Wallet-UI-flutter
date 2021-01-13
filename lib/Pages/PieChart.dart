import 'dart:math';

import 'package:Card_UI/Pages/data.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: customShadow,
              shape: BoxShape.circle),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(35.5),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
            Center(
                child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(1),
                              spreadRadius: -5,
                              offset: Offset(-5, -5),
                              blurRadius: 30)
                        ],
                        shape: BoxShape.circle),
                    child: Center(
                        child: Text(
                      "\$5743.0",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ))))
          ])),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    double total = 0;

    expenses.forEach((element) {
      total += element['amount'];
    });
    var startRadius = -pi / 2;
    for (var i = 0; i < expenses.length; i++) {
      var currentExpenses = expenses[i];
      var sweepRadius = (currentExpenses['amount'] / total) * 2 * pi;

      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadius, sweepRadius, false, paint);

      startRadius += sweepRadius;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
