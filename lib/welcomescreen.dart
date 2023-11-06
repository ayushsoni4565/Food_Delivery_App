import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("assets/images/boy.png"),
          SizedBox(height: 5,),
          Text("Order Your Food Now", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
          Padding(
            padding: EdgeInsets.only(
                bottom: 10
            ),
            child: Text(
              "Order food and get delivery within a few minutes to your door",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 80,),
          InkWell(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()),);


            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Get Started", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  SizedBox(width: 10,),
                  Icon(CupertinoIcons.forward, size: 25, color: Colors.white,)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
