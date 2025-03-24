import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/models/car%20model.dart';

import '../OfferDetails.dart';

Widget Hot_deal_car_item(h ,Car_modeh i,context){
  return InkWell(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (c)=>OfferDetails(i)));
    },
    child: Card(
      color: Colors.blue[800],
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: h/2.5,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
    
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(i.brand,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 20),),
                  Text('\$${ i.price.toString()}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 20),),
    
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(i.model,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 20),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: h/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(i.image.first),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
    
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Details',style: TextStyle(color: Colors.white),),
                ),
    
                Container(
                  padding: EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                  ),
                  child: Row(
                    children: [
                      Text('Rent Now',style: TextStyle(color: Colors.white),),
                      Icon(Icons.arrow_forward_sharp,color: Colors.white,)
                    ],
                  )
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}