import 'package:flutter/material.dart';


class AppWidget{
  static TextStyle boldTextFieldStyle(){
    return TextStyle(
        color: Colors.blue,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins' );
  }
  static TextStyle HeadLineTextFieldStyle(){
    return TextStyle(
        color: Colors.blue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins' );
  }
  static TextStyle LightTextFieldStyle(){
    return TextStyle(
        color: Colors.black38,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins' );
  }
    static TextStyle semiBoldTextFieldStyle(){
    return TextStyle(
        color: Colors.blue,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins' );
  }
}