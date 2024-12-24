import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i = 1; i < 5 ; i++)
        Container(
          height: 110,
          margin: EdgeInsets.only(left: 10, right: 10, top: 15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(14)),
          child: Row(
            children: [
              Radio(
                value: '',
                groupValue: '',
                activeColor: Color(0xFF4C53A5),
                onChanged: (index) {},
              ),
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 15),
                child: Image.asset(
                  'images/$i.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Name",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5)),
                      ),
                      Text(
                        '\$55',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF4C53A5)),
                      ),
                    ],
                  ),
                ),
              ),
Spacer(),
              Padding(padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.delete, color: Colors.red,),
                  Row(
                    children: [
                     Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.5),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 10
                        ),
                        ]
                      ),
                      child: Icon(CupertinoIcons.minus, color: Colors.white,),
                     ) ,
                     Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('01', ),
                     ),
                     Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.5),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 10
                        ),
                        ]
                      ),
                      child: Icon(CupertinoIcons.plus, color: Colors.white,),
                     ) 
                    ],
                  )
                ],
              ),)
            ],
          ),
        )
      ],
    );
  }
}
