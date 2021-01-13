import 'package:Card_UI/Pages/CardDeails.dart';
import 'package:Card_UI/Pages/data.dart';
import 'package:flutter/material.dart';

class CardSection extends StatefulWidget {
  @override
  _CardSectionState createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 19,
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            'Selected Card',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: customShadow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(children: [
                      Positioned.fill(
                          top: 100,
                          bottom: -200,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                                boxShadow: customShadow),
                          )),
                      Positioned.fill(
                          left: -300,
                          top: -100,
                          bottom: -100,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                                boxShadow: customShadow),
                          )),
                      Positioned.fill(
                          right: 50,
                          left: 200,
                          top: -200,
                          bottom: -100,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white60,
                            ),
                          )),
                      Positioned.fill(
                          right: 59,
                          left: 199,
                          top: -199,
                          bottom: -99,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //color: Colors.white,
                                boxShadow: customShadow),
                          )),
                      CardDetails()
                    ]),
                  );
                }))
      ],
    );
  }
}
