import 'package:cardd/widgets/Settings_Profile.dart';
import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime[100],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
            size: 30,
          ),
        ),
        title: const Text(
          'Settings profile',
          style: TextStyle(fontSize: 21, color: Colors.black45),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.lime[100],
          child: Column(
            children: const [
              SettingsProfile(),
              SettingsProfile(),
              SettingsProfile(),
              SettingsProfile(),
              SettingsProfile(),
            ],
          )),
    );
  }
}
