import 'package:flutter/material.dart';


void main() {
  runApp(const Welcomes());
}

class Welcomes extends StatelessWidget {
  const Welcomes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          title: Image.asset(
            'assets/flutter.jpg', // logo in AppBar
            height: 40, // adjust as needed
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
                Text(
                  'WELCOME TO FLUTTER CLASS',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}