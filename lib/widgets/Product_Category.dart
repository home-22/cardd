import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          for (int i = 1; i < 7; i++)
            Container(
              margin: const EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFF292B37),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF292B37),
                    blurRadius: 1,
                    spreadRadius: 5,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
