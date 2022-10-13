import 'package:cardd/pages/Home_Page.dart';
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
            onTap: () {},
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.category,
              size: 30,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
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
