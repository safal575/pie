import 'package:flutter/material.dart';
import 'package:pie/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hello Safal",
                style: AppWidget.boldTextFieldStyle(),
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.shopping_cart, color: Colors.blue),
              )
            ],
          ),
          SizedBox(height: 30,)
          Text("Delicious Food",
            style: AppWidget.boldTextFieldStyle(),
          ),
          ],
        ),
      )
    );
  }
}