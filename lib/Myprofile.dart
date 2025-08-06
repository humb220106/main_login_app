import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Page"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Second Page")),
//       body: Center(
//         child: ElevatedButton(
//           child:   Image(
//                   image: AssetImage('assets/flutter.jpg'),
//                   width: 100, // logo adjustment
                  
//                 ),
//           onPressed: () {
//             Navigator.pop(context); // Go back
//           },
//         ),
//       ),
//     );
//   }
// }


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/flutter.jpg'),
              width: 100,
            ),
            SizedBox(height: 20), // space between image and button
            ElevatedButton(
              child: Text("Back to Home"),
              onPressed: () {
                Navigator.pop(context); // Go back
              },
            ),
          ],
        ),
      ),
    );
  }
}


