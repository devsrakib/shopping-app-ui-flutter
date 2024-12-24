import 'package:flutter/material.dart';

class ItemsWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: .68,
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i<8; i++)
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF4C53A5)),
                    child: Text(
                      '-50%',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Icon(Icons.favorite_border, color: Colors.red,)
                ],
              ),
              InkWell(
                onTap: () {
                  
                },
                child: Image.asset('images/$i.png', width: 120, height: 120,),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 6),
                alignment: Alignment.centerLeft,
                child: Text('Product title', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF4C53A5)
                ),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('description of the product', style: TextStyle(fontSize: 14,
                color: Color(0xFF4C53A5)),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$55', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF4C53A5)),
                  
                  ),
                  Icon(Icons.shopping_bag_outlined, color: Color(0xFF4C53A5),)
                ],
              ),)
            ],
          ),
        )
      ],
    );
  }
}
