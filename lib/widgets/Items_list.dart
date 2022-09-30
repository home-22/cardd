import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          for (int i = 1; i < 7; i++)
            Container(
              margin: EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]),
            )
        ],
      ),
    );
  }
}
