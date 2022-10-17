import 'package:flutter/material.dart';

class MovesHome extends StatelessWidget {
  const MovesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 10; i++)
            InkWell(
              onTap: () {},
              child: Container(
                width: 140,
                height: 230,
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: const Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF292B37).withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 4,
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        'images/3.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
