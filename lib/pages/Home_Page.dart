// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cardd/widgets/All_Items.dart';
import 'package:cardd/widgets/CustomNavBar.dart';
import 'package:cardd/widgets/Home_Product.dart';
import 'package:cardd/widgets/Product_Card.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F111D),
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.location_on,
            size: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Bosna and Hercegovina Sarajevo, 1A',
          style: TextStyle(
            fontSize: 19,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      child: Icon(
                        Icons.segment_sharp,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 250,
                            child: TextFormField(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      child: Icon(
                        Icons.notifications_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'New new',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.ios_share,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const ProductCard(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    const Text(
                      'New ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const AllItems(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text(
                      'New New new',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const HomeProduct(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
