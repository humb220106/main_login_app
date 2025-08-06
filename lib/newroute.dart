import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          title:    Text(
                  'WELCOME TO FLUTTER CLASS',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
        ),
        body: Container(
          color: Colors.red, // red background
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // logo in body
                Image(
                  image: AssetImage('assets/flutter.jpg'),
                  width: 100, // logo adjustment
                ),
                SizedBox(height: 20), // space between text & logo
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}