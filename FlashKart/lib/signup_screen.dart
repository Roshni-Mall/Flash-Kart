import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
      home: const MyHomePage(title: 'SignUp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(15),
              child: TextField(obscureText: false, decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "First Name",hintText: "Enter First Name",),),),
            Padding(padding: EdgeInsets.all(15),
              child: TextField(obscureText: false, decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Last Name",hintText: "Enter Last Name",),),),
            Padding(padding: EdgeInsets.all(15),
              child: TextField(obscureText: true, decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Password",hintText: "Enter Your Password",),),),
            Padding(padding: EdgeInsets.all(15),
              child: TextField(obscureText: true, decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Confirm Password",hintText: "Enter Your Password Again",),),),
            Padding(padding: EdgeInsets.all(15),
              child: TextField(obscureText: false, decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Gender",hintText: "Enter Your Gender",),),),
            Padding(padding: EdgeInsets.all(15),
              child: TextField(obscureText: false, decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Age",hintText: "Enter Your Age",),),),
            Padding(padding: EdgeInsets.all(15),
              child: TextField(obscureText: false, decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Contact Details",hintText: "Enter Your Contact Details",),),),
            Padding(padding: EdgeInsets.all(15),
              child: TextField(obscureText: false, decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Email ID",hintText: "Enter Your Email ID",),),),
            Padding(padding: EdgeInsets.all(15),
              child: TextField(obscureText: false, decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Address",hintText: "Enter Your Address",),),),
            Padding(padding: EdgeInsets.all(15),

              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const home_screen()),
                  );
                },
                child: const Text('Sign Up'),
              ),),
          ],
        ),
      ),),
    );
  }
}