// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Loginform(),
    );
  }
}

////////////////////////////////////not//////////////////////////////
class Loginform extends StatelessWidget {
  const Loginform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ////////frist container
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 222,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "your email :",
                    labelStyle: TextStyle(fontSize: 33),
                    icon: Icon(Icons.person)),
              ),
            ),
            /////////seconde container
            Container(
                margin: EdgeInsets.symmetric(vertical: 27),
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66)),
                width: 222,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "password :",
                    labelStyle: TextStyle(fontSize: 33),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                )),
            /////////bottom
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "login",
                  style: TextStyle(fontSize: 19,color: Colors.white),
                ),
                style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple),
                padding: MaterialStatePropertyAll(EdgeInsetsDirectional.symmetric(horizontal: 99,vertical: 10)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(66)))

                




                ),
                
                
                
                )
          ],
        ),
      ),
    );
  }
}
