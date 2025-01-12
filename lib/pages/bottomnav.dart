import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pie/pages/home.dart';
import 'package:pie/pages/order.dart';
import 'package:pie/pages/profile.dart';
import 'package:pie/pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState(){
    homepage = Home();
    order = Order();
    profile = Profile();
    wallet =   Wallet();

    pages = [homepage, order, profile, wallet];
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.blue,
        animationDuration: Duration(milliseconds: 500),
         onTap: (int index){
          setState(() {
            currentTabIndex = index;
          });
         },
        items:<Widget>[       
          Icon(Icons.home_outlined, color: Colors.black),
          Icon(Icons.shopping_bag_outlined, color: Colors.black),
          Icon(Icons.wallet_outlined, color:Colors.black),
          Icon(Icons.person_outlined, color: Colors.black),
        ]
      ),
       body: pages[currentTabIndex], 
      );
  }
}

