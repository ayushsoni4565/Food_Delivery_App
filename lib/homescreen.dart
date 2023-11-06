//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/item_screen.dart';

class HomeScreen extends StatelessWidget {

  List Foods = [
    "Pizza",
    "Burger",
    "Snacks",
    "Water",
  ];
    List food2 = [
      "Chicken Burger",
      "Cheese Pizza",
    ];
    List<Color> bgColor = [
      Color(0xFFFBDCDA),
      Color(0xFFD4EEF3),
      Color(0xFFFAE6D5),
      Color(0xFFEFCFE7),
    ];

  @override
  Widget build(BuildContext context) {
    return Material(
    color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Deliver to",style: TextStyle(
                     fontSize: 18,
                     color: Colors.black54,
                   ),),
                   SizedBox(height: 5,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Icon(CupertinoIcons.location_solid,size: 25,color: Colors.red,),
                       SizedBox(width: 5,),
                       Text("New York, USA",style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.black,
                       ),),
                       SizedBox(width: 5,),
                       Icon(CupertinoIcons.arrow_down,size: 25,color: Colors.red,)

                       //line 68 1147 min
                     ],
                   ),
                 ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.jpg"),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Positioned(
                      left: 45,
                      top: 5,
                      child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 3),
                        color: Color(0xFFFF2F08),
                        shape: BoxShape.circle,
                      ),
                    ),),

                  ],
                ),
              ],
            ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF3F3F3),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search your food here",
                        prefixIcon: Icon(CupertinoIcons.search,size: 30,),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFF2F08),
                    ),
                    child: Icon(CupertinoIcons.line_horizontal_3_decrease,size: 28,color: Colors.white,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: ClipRRect(
               borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/images/banner.jpg"),
            ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.black,
                ),),
                TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
                ),),
              ],
            ),
            ),
            SizedBox(height: 120,
            child: ListView.builder(
                itemCount: Foods.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index)  {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.symmetric(vertical:5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: bgColor[index],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/${Foods[index]}.png",
                        height: 80,
                          width: 80,
                        ),
                        Text(
                          Foods[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                                fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
              },
              
            ),
            ),
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular",style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),),
                  TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black45,
                  ),),
                  ),
                ],
              ),
            ),
            SizedBox(height:220,
            child: ListView.builder(
              shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: food2.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemScreen(),),);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      margin: EdgeInsets.only(left: 15,right: 5,bottom: 5,top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: Colors.black12,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset("assets/images/${food2[index]}.jpg",
                              height: 120,
                              width: MediaQuery.of(context).size.width / 1.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    food2[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("Fast Food",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black45,
                                  ),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(CupertinoIcons.star_fill,size: 25,color: Color(0xFFFF2F08),
                                      ),
                                      SizedBox(width: 3,),
                                      Text("4.7",style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                      ),),
                                      SizedBox(width: 3,),
                                      Text("(941 Ratings)",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),),
                                      
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Icon(CupertinoIcons.location_solid,size: 25,color: Color(0xFFFF2F08),
                                      ),
                                      SizedBox(width: 4,),
                                      Text("1 Km",style: TextStyle(
                                         fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black54,
                                      ),),
                                    ],
                                  ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFF2F08),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                      )
                                    ),
                                    child: Text("\$15.89",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
            ),
            ),
             SizedBox(height: 50,),
            


          ],
        ),
      ),
    );
  }
}
