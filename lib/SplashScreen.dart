import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recipes/recipes_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigate to the next screen after 3 seconds
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => RecipesHomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add logo here (use Image.asset if you have a logo file)
            Icon(
              Icons.restaurant_menu,
              size: 100,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome to Recipes",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
