import 'package:cardd/widgets/App_items.dart';
import 'package:cardd/widgets/Items_list.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    SizedBox(
                      child: Icon(
                        Icons.segment_sharp,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Icon(
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
                    SizedBox(
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
              AppItems(),
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
                padding: EdgeInsets.symmetric( vertical: 10),
                child: ItemsList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
