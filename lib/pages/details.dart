import 'package:flutter/material.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:50, left: 20, right: 20), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_outlined, color: Colors.black),
            ),
            Image.asset("images/salad.jpg",width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/3, fit: BoxFit.fill),
          ],
        ),
      )
    );
  }
}