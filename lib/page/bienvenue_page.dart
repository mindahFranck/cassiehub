// ignore_for_file: prefer_const_constructors

import 'package:cassiehub/colors.dart';
import 'package:cassiehub/page/home_page.dart';
import 'package:cassiehub/page/loginpage.dart';
import 'package:flutter/material.dart';

class BienvenuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color.fromARGB(54, 33, 149, 243),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset("images/logos.png"),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 39, 118, 221),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      }),
                      child: Text(
                        "Connexion",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  )),
              Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 39, 118, 221),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      }),
                      child: Text(
                        "Inscription",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(height: 25),
        ],
      ),
    ));
  }
}
