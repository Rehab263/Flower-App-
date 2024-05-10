// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, await_only_futures, prefer_const_literals_to_create_immutables

import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:flutter_application_1/shared/contants.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(                     
        appBar: AppBar(
          backgroundColor: appbarGreen,
          title: Text("Sign in"),
        ),
        backgroundColor: Color.fromRGBO(247, 247, 247, 1),
        body: Container(     
          padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 40),     
            child: Column(
              children: [  
                const SizedBox(height: 30),      
                Text("Welcome Back",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 6, 75, 131)),),
                const SizedBox(height: 50),
                TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Email : ",
                    )),
                const SizedBox(
                  height: 33,
                ),
                TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Password : ",
                    )),
                    const SizedBox(
                  height: 10),
                    Padding(padding: EdgeInsets.only(left: 174),
                      child:Text("forgot password?",
                    style: TextStyle(fontSize: 15,
                    color: Colors.grey),textAlign: TextAlign.right,))
                    ,   
                 const SizedBox(
                  height: 33,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home()));
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 19),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an account?", style: TextStyle(fontSize: 18)),
                    TextButton(
                      onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()),
                            );
                      },
                      child:
                          Text('sign up', style: TextStyle(color: Colors.black,fontSize: 18))),
                 
                  ],
                )
              ],
            ),),
          ),
        );
  }
}
