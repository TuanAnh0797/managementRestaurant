import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:managerrestaurant/main.dart';
import 'package:passwordfield/passwordfield.dart';

class loginform extends StatefulWidget {
  const loginform({super.key});

  @override
  State<loginform> createState() => _loginformState();
}

class _loginformState extends State<loginform> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(

        // appBar: AppBar(
        //
        // ),
        body:  Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(30, 15, 215, 71),
                Color.fromARGB(100, 15, 215, 192),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      const Image(image: AssetImage('assets/pngimage/fast-food (2).png')),
                      const Padding(padding: EdgeInsets.only(bottom: 10)),
                      const Text('ABC XYZ BAKERY',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.teal,decoration: TextDecoration.overline)),
                      const Padding(padding: EdgeInsets.only(top: 30)),
                     const TextField(

                       style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),
                       decoration: InputDecoration(hintText: 'User Name',border: OutlineInputBorder(),contentPadding: EdgeInsets.only(
                           top: 0, bottom: 0, left: 5, right: 5),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),),
                     ),
                     const Padding(padding: EdgeInsets.only(bottom: 10)),
                      PasswordField(

                        color: Colors.grey,

                        passwordConstraint: r'[a-zA-Z]',
                        hintText: 'Password',
                        border: PasswordBorder(
                          border: const OutlineInputBorder()

                        ),
                        passwordDecoration: PasswordDecoration(inputStyle: const TextStyle(fontSize: 20,fontStyle: FontStyle.italic),inputPadding: const EdgeInsets.only(
                            top: 0, bottom: 0, left: 5, right: 5)),

                        //errorMessage: 'must contain special character either . * @ # \$',
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 10)),
                      IconButton(
                        iconSize: 100,
                          onPressed: (){
                            Navigator.popAndPushNamed(context, listroute[2]);
                      }
                      , icon: SvgPicture.asset('assets/svgicon/login.svg') )
                    ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
