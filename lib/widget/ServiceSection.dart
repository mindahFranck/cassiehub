// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:cassiehub/Models/service.dart';
import 'package:cassiehub/colors.dart';
import 'package:cassiehub/page/details_page.dart';
import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  final List<Service> services = Service.services();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 300,
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFF2F8FF),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: sdcolor,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(this.services[index]),
                                ));
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Hero(
                                tag: services[index].name,
                                child: Image.asset(
                                  "images/${services[index].image}.jpg",
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xFFF2F8FF),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    color: sdcolor),
                              ],
                            ),
                            child: Center(
                                child: Icon(
                              Icons.favorite_outline,
                              color: pcolor,
                              size: 28,
                            )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            services[index].name,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: pcolor,
                            ),
                          ),
                          Text(
                            services[index].name,
                            style: TextStyle(
                                fontSize: 18, color: bcolor.withOpacity(0.6)),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: bcolor.withOpacity(0.6)),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
