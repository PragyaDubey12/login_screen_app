import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two Buttons Layout"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Login button pressed");
                },
                child: Text("Login"),
              ),

              SizedBox(width: 20), // Space between buttons

              ElevatedButton(
                onPressed: () {
                  print("Register button pressed");
                },
                child: Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}