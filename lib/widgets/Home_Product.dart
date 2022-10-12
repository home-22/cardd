
import 'package:flutter/material.dart';


class HomeProduct extends StatelessWidget {
  const HomeProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 4; i++)
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
              height: 110,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/3.png'),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Redmi note 11 Pro \5')],
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
