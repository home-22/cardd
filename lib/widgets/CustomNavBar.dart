// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: (BorderRadius.all(
          Radius.circular(25),
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'HomePage');
            },
            child: const Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'CategoryPage');
            },
            child: const Icon(
              Icons.category,
              size: 30,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
