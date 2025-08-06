import 'package:flutter/material.dart';
import 'm2.dart';
import 'm6.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Navigation of Pages', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('WELCOME TO THE APP'),

        backgroundColor: Colors.blue,

        foregroundColor: Colors.white, // affect Text & icon color
      ),*/

      //or
      appBar: AppBar(
        title: Text(
          'WELCOME TO THE APP',
          style: TextStyle(
            color: Colors.white,
          ), // Set text color to affect text
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to M2 Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageM2()),
                );
              },
            ),
            SizedBox(height: 20),

            ElevatedButton(
              child: Text('Go to M6 Page - My Course'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageM6()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

