import 'package:flutter/material.dart';
import 'package:uione/widgets/CartAppBar.dart';
import 'package:uione/widgets/CartItemSample.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [
                CartItemSample()
                
                ],
            ),
          )
        ],
      ),
    );
  }
}
