import 'package:cardd/widgets/Settings_Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings_Page extends StatelessWidget {
  const Settings_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime[100],
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
          color: Colors.lime[100],
          child: Column(
            children: [SettingsProfile(), SettingsProfile(), SettingsProfile()],
          )),
    );
  }
}
