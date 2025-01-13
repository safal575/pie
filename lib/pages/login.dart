import 'package:flutter/material.dart';
import 'package:pie/widget/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(0, 54, 43, 168),
                    Color.fromARGB(0, 16, 16, 228)
                ])
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.3),
              decoration: BoxDecoration(color: Colors.white, 
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40)
                ),
              ),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                children: [
                  Center(
                    child: 
                      Image.asset("images/pizza.jpg", width: MediaQuery.of(context).size.width, fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 20,),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/3,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Text("Login", style: AppWidget.HeadLineTextFieldStyle(),),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(hintText: 'Email', hintStyle: AppWidget.boldTextFieldStyle(), prefixIcon: Icon(Icons.email_outlined)),
                            ),
                            SizedBox(height: 20,),
                            TextField(
                              decoration: InputDecoration(hintText: 'Password', hintStyle: AppWidget.LightTextFieldStyle(), prefixIcon: Icon(Icons.password_outlined)),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              alignment: Alignment.topRight,
                              child: Text("Forgot password?", style: AppWidget.LightTextFieldStyle(),)

                            )
                          ],
                        ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}