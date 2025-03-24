import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task3/models/car%20model.dart';

import 'ContactSupport.dart';

class OfferDetails extends StatefulWidget {
  Car_modeh car;
  OfferDetails(this.car);

  @override
  State<OfferDetails> createState() => _OfferDetailsState(car);
}

class _OfferDetailsState extends State<OfferDetails> {
  Car_modeh car;
  _OfferDetailsState(this.car);
  int curnnet_index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[800],),
      body: Container(
        color: Colors.blue[800],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(car.brand + " ",style: TextStyle(color: Colors.white,fontSize: 30),),
                      Text(car.model,style: TextStyle(color: Colors.white60,fontSize: 30),),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child:
                    IconButton(
                      icon: Icon(Icons.contact_support),
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactSupport()));

                      },


                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    onPageChanged: (i,c){
                      curnnet_index=i;
                    },
                      height: 200.0,viewportFraction: 1),
                  items: car.image.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                            ),
                            child: Image(image: AssetImage(i))
                        );
                      },
                    );
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(car.image.length, (int i)=>Icon(Icons.circle , color: i==curnnet_index?Colors.white:Colors.white60,size: 12,)),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue.shade700)
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.color_lens,color: Colors.white),
                    Text(car.color,style:TextStyle(color: Colors.white,fontSize: 18, ),),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue.shade700)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.engineering,color: Colors.white),
                    Text(car.motor,style: TextStyle(color: Colors.white,fontSize: 18,),),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue.shade700)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.speed,color: Colors.white),
                    Text(car.speed,style: TextStyle(color: Colors.white,fontSize: 18,),),
                  ],
                ),
              ),
            ],),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue.shade700)
                  ),child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.chair,color: Colors.white),
                        Text(car.seats,style: TextStyle(color: Colors.white,fontSize: 18,),),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue.shade700)
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag,color: Colors.white,),
                        Text(car.bag,style: TextStyle(color: Colors.white,fontSize: 18,),),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue.shade700)
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Icon(Icons.chair),
                        Text(car.typ,style: TextStyle(color: Colors.white,fontSize: 18,),),
                      ],
                    ),
                  ),
                ),
              ],),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 60,left: 50,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('\$${car.price.toString()}',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    alignment: Alignment.center,
                    child:
                    TextButton(onPressed: (){
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SingUp()));
                    }, child: Text('Rent Now',style: TextStyle(color: Colors.white,fontSize: 20),),)

                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
