import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'DP Shop',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color(0xFF4C53A5)),
            ),
          ),
          Spacer(),
           badges.Badge(
          badgeStyle: badges.BadgeStyle(
            padding: EdgeInsets.all(7),
          ),
          // position: badges.BadgePosition.topEnd(top: -12, end: -20),
          badgeContent: Text(
            '3',
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          ),
          child: InkWell(

            child: Icon(Icons.shopping_bag_outlined, size: 33, color: Color(0xFF4C53A5),),
          ),
           ),
        ],
      ),
    );
  }
}
