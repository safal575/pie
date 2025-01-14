import 'package:flutter/material.dart';
import 'package:pie/pages/login.dart';
import 'package:pie/widget/widget_support.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                   Colors.blue, 
                    Colors.lightBlue
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
                      Image.asset("images/burger.jpg", width: MediaQuery.of(context).size.width, fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 20,),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                    
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Text("Sign Up", style: AppWidget.HeadLineTextFieldStyle(),),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(hintText: 'Name', hintStyle: AppWidget.boldTextFieldStyle(), prefixIcon: Icon(Icons.person_outlined)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(hintText: 'Email', hintStyle: AppWidget.boldTextFieldStyle(), prefixIcon: Icon(Icons.email_outlined)),
                            ),
                            SizedBox(height: 20,),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(hintText: 'Password', hintStyle: AppWidget.LightTextFieldStyle(), prefixIcon: Icon(Icons.password_outlined)),
                            ),
                            
                            SizedBox(height: 50,),
                            Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                width: 200,
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                                child: Center(child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),),
                              ),
                            ),
                           
                          ],
                        ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(" Already have an account? Login", style: AppWidget.LightTextFieldStyle()),
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