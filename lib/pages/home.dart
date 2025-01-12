import 'package:flutter/material.dart';
import 'package:pie/widget/widget_support.dart';
import 'package:pie/pages/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool pizza = false, burger = false, salad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20),
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
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.shopping_cart, color: Colors.blue),
              )
            ],
          ),
          SizedBox(height: 30,),
          Text("Delicious Food",
            style: AppWidget.HeadLineTextFieldStyle(),
          ),
          Text("Discover and Get Great Food",
            style: AppWidget.LightTextFieldStyle(),
          ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(right: 20,),
              child:showItem()
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      child:
                        Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/salad.jpg", width: 200, height: 100, fit: BoxFit.cover),
                              Text("Veggie Taco Hash", style: AppWidget.semiBoldTextFieldStyle(),),
                              Text("Fresh and Healthy", style: AppWidget.LightTextFieldStyle(),),
                              SizedBox(height: 5,),
                              Text("\$25", style: AppWidget.semiBoldTextFieldStyle(),)
                            ]
                          ),
                        )
                     ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: 
                    Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("images/burger.jpg", width: 200, height: 100, fit: BoxFit.cover),
                          Text("Veggie Taco Hash", style: AppWidget.semiBoldTextFieldStyle(),),
                          Text("Fresh and Healthy", style: AppWidget.LightTextFieldStyle(),),
                          SizedBox(height: 5,),
                          Text("\$25", style: AppWidget.semiBoldTextFieldStyle(),)
                        ]
                      ),
                    )
                  )
                  )
                  
                ],
              )
            ),
            Container(
              
            ),
            SizedBox(height: 30,),
            Material(
              elevation: 5,
              borderRadius:BorderRadius.circular(20), 
              child: Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/pizza.jpg", height: 100, width:150, fit: BoxFit.cover),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Container( 
                          child: Text("Cheese pizza", style: AppWidget.semiBoldTextFieldStyle(),)
                        ),
                        SizedBox(height: 5,),
                        Container(
                          child: Text("tasty", style: AppWidget.LightTextFieldStyle(),)
                        ),
                        SizedBox(height: 5,),
                        Container(
                          child: Text("\$25", style: AppWidget.semiBoldTextFieldStyle(),)
                        ),
                      ],
                    )
                  ]
                )
              )
            )
          ],
        ),
      )
    );
  }
  Widget showItem(){
    return
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                burger = true;
                pizza = false;
                salad = false;
                setState(() {

                });
              },
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    decoration: BoxDecoration(color: burger?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(10),
                    child: Image.asset("images/burger.jpg", height: 80, width: 80, fit: BoxFit.cover, color: burger? Colors.white: Colors.black,)
                ),
              ),
            ),

            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/pizza.jpg", height: 80, width: 80, fit: BoxFit.cover,)
              ),
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/salad.jpg", height: 80, width: 80, fit: BoxFit.cover,)
              ),
            )
          ]
      );
  }
}