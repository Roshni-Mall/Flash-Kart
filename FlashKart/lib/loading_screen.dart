import 'dart:html';

import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

void main() {
  runApp(const loading_screen());
}

class loading_screen extends StatelessWidget {
  const loading_screen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flash Kart',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flash Kart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.jpg',height: 400,width: 400,),
            const Text(
              'Choose an option:',
            ),
            Padding(padding: EdgeInsets.all(5),),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Login'),
            ),
            Padding(padding: EdgeInsets.all(20),),
            const Text(
              "Don't have an account?",
            ),
            Padding(padding: EdgeInsets.all(5),),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              child: const Text('Sign Up'),
            ),
            Padding(padding: EdgeInsets.all(20),),
            const Text(
              "---------------Sign In With---------------",
            ),
            Padding(padding: EdgeInsets.all(10),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust alignment as needed
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Adjust padding as needed
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/google.png', // Replace with your image asset path
                        width: 24, // Adjust width as needed
                        height: 24, // Adjust height as needed
                      ),
                      SizedBox(width: 10), // Add spacing between image and text
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Adjust padding as needed
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png', // Replace with your image asset path
                        width: 24, // Adjust width as needed
                        height: 24, // Adjust height as needed
                      ),
                      SizedBox(width: 10), // Add spacing between image and text
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },



                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Adjust padding as needed
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/twiteer.png', // Replace with your image asset path
                        width: 24, // Adjust width as needed
                        height: 24, // Adjust height as needed
                      ),
                      SizedBox(width: 10), // Add spacing between image and text
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Adjust padding as needed
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/instagram.png', // Replace with your image asset path
                        width: 24, // Adjust width as needed
                        height: 24, // Adjust height as needed
                      ),
                      SizedBox(width: 10), // Add spacing between image and text
                    ],
                  ),
                ),
              ],
            ),

            //     Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //   Image.asset(
            //   'assets/images/google.png',
            //   height: 40,
            //   width: 40,
            // ),
            // Image.asset(
            //   'assets/images/facebook.png',
            //   height: 40,
            //   width: 40,
            // ),
            // Image.asset(
            //   'assets/images/twiteer.png',
            //   height: 40,
            //   width: 40,
            // ),
            // Image.asset(
            //   'assets/images/instagram.png',
            //   height: 40,
            //   width: 40,
            // ),
          ],
        ),

      ),);
  }
}