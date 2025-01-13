import 'package:flutter/material.dart';
import 'package:pie/widget/widget_support.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;


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
            Image.asset("images/salad.jpg",width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/2.5, fit: BoxFit.fill),
            SizedBox(height: 5,),
                       
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Awsome Salad", style: AppWidget.semiBoldTextFieldStyle()),
                    Text("Veggie", style: AppWidget.boldTextFieldStyle()),
                  ]
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    if(a>1){
                      --a;
                    }
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child:Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                SizedBox(width: 10,),
                Text(a.toString(), style: AppWidget.semiBoldTextFieldStyle(),),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    ++a;
                    setState(() {
                      
                    });
                  },
                  child: Container(

                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child:Icon(Icons.add, color: Colors.white),
                  )
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", maxLines: 3,
            style: AppWidget.LightTextFieldStyle()),
            SizedBox(
              height:30,
            ),
            Row(
              children: [
                Text("Delivery Time", style: AppWidget.semiBoldTextFieldStyle()),
                SizedBox(width: 25,),
                Icon(Icons.alarm, color: Colors.black),
                SizedBox(width: 5,),
                Text("30 min", style: AppWidget.semiBoldTextFieldStyle()),
                SizedBox(width: 5,)
              ]
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total price", style: AppWidget.boldTextFieldStyle()),
                      Text("\$20", style: AppWidget.boldTextFieldStyle()),

                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(color: Colors.black),
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text("Add to cart", style: TextStyle(color:Colors.white, fontSize: 16, fontFamily: 'Poppins')),
                        SizedBox(width: 30, ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.shopping_cart_outlined, color: Colors.white,)
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}