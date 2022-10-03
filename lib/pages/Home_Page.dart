import 'package:cardd/widgets/Product_Card.dart';
import 'package:cardd/widgets/Product_Category.dart';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime[100],
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.location_on,
            size: 25,
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Bosna and Hercegovina Sarajevo, 1A',
          style: TextStyle(
            fontSize: 19,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: Colors.lime[100],
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
                        color: Colors.blue,
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
                            color: Colors.blue,
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
                        Icons.notifications,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Akcija',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.ios_share,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              ProductCard(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'List',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add_chart_sharp,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.share_rounded,
                      color: Colors.blue,
                      size: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ProductCategory(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {},
        iconSize: 30,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.location_on,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.add_shopping_cart_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
