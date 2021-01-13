import 'package:Card_UI/Pages/data.dart';
import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shuazi's Wallet",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: customShadow),
              child: Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    shape: BoxShape.circle,
                  )),
                  Center(
                    child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                        )),
                  ),
                  Center(
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
