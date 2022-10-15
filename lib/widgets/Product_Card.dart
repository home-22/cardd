import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 5; i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'ShoppingCard');
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                height: 120,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFF292B37),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF292B37).withOpacity(0.4),
                      blurRadius: 1,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Image.asset(
                  'images/1.png',
                  height: 120,
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
