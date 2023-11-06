import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(CupertinoIcons.left_chevron,size: 30,color: Colors.black45,),
        ),
        title: Text("Cheese Pizza",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        actions: [
          Padding(padding: EdgeInsets.only(right: 10),
          child: Icon(CupertinoIcons.heart_fill,size: 25,color: Colors.black45,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.center,
              child: Text("Mixed Pizza with beaf, chilli and cheese",style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w600,
                 fontSize: 16,
              ),
              ),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(CupertinoIcons.star_fill,size: 22,color: Color(0xFFFF2F08),),
                 SizedBox(width: 3,),
                 Text("4.7",style: TextStyle(
                   fontSize: 26,
                   fontWeight: FontWeight.w700,
                   color: Colors.black45,
                 ),),
               ],
            ),
            Padding(padding: EdgeInsets.all(25),
            child: Image.asset("assets/images/Pizza.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Volume",style: TextStyle(
                       color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),),
                    SizedBox(height: 3,),
                    Text("12 inch",style: TextStyle(
                       fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  ],
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black54,
                ),
                Column(
                  children: [
                    Text("Calories",style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),),
                    SizedBox(height: 3,),
                    Text("120",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  ],
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black54,
                ),
                Column(
                  children: [
                    Text("Distance",style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),),
                    SizedBox(height: 3,),
                    Text("1 Km",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  ],
                ),

              ],
            ),
           SizedBox(height: 40,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Order",style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),),
                    SizedBox(height: 7,),
                    Row(
                       children: [
                         Icon(CupertinoIcons.add_circled,size: 25,color: Colors.black45,),
                         SizedBox(width: 2,),
                         Text("01",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                         SizedBox(width: 2,),
                         Icon(CupertinoIcons.minus_circled,size: 25,color: Colors.black45,)
                       ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("Delivery",style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),),
                    SizedBox(height: 8,),
                    Text("Express",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),),

                  ],
                ),
                Column(
                   children: [
                     Text("Price",style: TextStyle(
                       color: Colors.black45,
                       fontWeight: FontWeight.w600,
                       fontSize: 17,
                     ),),
                     SizedBox(height: 8,),
                     Text("\$8.99",style: TextStyle(
                       fontSize: 17,
                       fontWeight: FontWeight.bold,
                       color: Color(0xFFFF2F08),
                     ),),
                   ],
                )
              ],
            ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){},
        child: Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFFF2F08),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add to Cart",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),),
              SizedBox(width: 4,),
              Icon(CupertinoIcons.add_circled,size: 25,color: Colors.white,)
            ],
          ),
        ),
      ),

    );
  }
}
