import 'dart:math';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: BoxBorder.all(color: Colors.pink.shade400, width: 5.0),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios, color: Colors.pink),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 10,
              bottom: 0,
              child: Text(
                "Grandeur's Plants",
                style: TextStyle(fontSize: 25.0, color: Colors.black87),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: CircleAvatar(
                backgroundColor: Colors.pink[100],
                child: Icon(Icons.menu, color: Colors.white),
              ),
            ),
            Positioned(
              top: 350,
              left: 0,
              child: Transform.rotate(
                angle: -pi / 2,
                origin: Offset(-70, 0),
                child: Text(
                  "Fluorescent Shop",
                  style: TextStyle(fontSize: 25.0, color: Colors.pink.shade200),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 40,
              left: 65,
              child: Container(
                width: width - 10,
                height: height - 70.0,
                decoration: BoxDecoration(
                  color: Colors.pink[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.shade100,
                      spreadRadius: -5,
                      offset: Offset(-10, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Plant's Shop",
                          style: TextStyle(fontSize: 37.0, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Image.asset(
                      "assets/images/plant.png",
                      height: 400,
                      width: 350,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Hibiscus",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                        Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                        Text(
                          "Price",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "2 Meter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                        Text(
                          "3 KG",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                        Text(
                          "\$ 12.5",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
