import 'package:flutter/material.dart';


class CategoriesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            child: Text('hello'),
          )
        ],
        ),
    );
  }
}