import 'dart:ui';

import 'package:cardd/widgets/CustomNavBar.dart';
import 'package:cardd/widgets/Move_PageButtons.dart';
import 'package:cardd/widgets/Recommend_Move.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovePage extends StatelessWidget {
  const MovePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'images/1.jpg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/3.jpg',
                              height: 250,
                              width: 180,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 40, top: 40),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  MovePageButtons(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Doctor Strange 3',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'This is the sample description of the movie, you can write here the description of the movie. you can write here the description of the movie.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                  RecommendMove()
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
