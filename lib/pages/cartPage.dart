import 'package:flutter/material.dart';
import 'package:uione/widgets/CartAppBar.dart';
import 'package:uione/widgets/CartBottomNavBar.dart';
import 'package:uione/widgets/CartItemSample.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CartBottomNavBar(),
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
                CartItemSample(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20)
                      ),
                        child: Icon(Icons.add, color: Colors.white,),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Add Coupon Code', style: TextStyle(
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  ),
                )

                ],
            ),
          )
        ],
      ),
    );
  }
}
