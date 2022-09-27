// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'LOGIFOY',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.red,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Enter Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: 'Enter Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: const Icon(Icons.remove_red_eye)),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forget Password?'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      colors: [Colors.red, Colors.amber],
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'WelcomeScreen');
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Icon(
                    Icons.fingerprint,
                    size: 50,
                    color: Colors.lightGreen,
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  height: 20,
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Don t have an Account?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Register Account?'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
