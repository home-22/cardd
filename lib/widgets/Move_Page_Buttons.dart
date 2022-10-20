// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MovePageButtons extends StatelessWidget {
  const MovePageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF292B37).withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: const Icon(
              Icons.add,
              size: 35,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF292B37).withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: const Icon(
              Icons.favorite,
              size: 35,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF292B37).withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: const Icon(
              Icons.download,
              size: 35,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF292B37).withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: const Icon(
              Icons.share,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
