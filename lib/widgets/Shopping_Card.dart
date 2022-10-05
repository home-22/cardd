import 'dart:ui';

import 'package:flutter/material.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime[100],
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
        ),
        title: Text(
          'Kupovina',
          style: TextStyle(
              fontSize: 22, color: Colors.blue, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        color: Colors.lime[100],
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Image.asset('images/3.png'),
                ),
              ],
            ),
            Column(
              children: [Text('Neki text')],
            )
          ],
        ),
      ),
    );
  }
}
