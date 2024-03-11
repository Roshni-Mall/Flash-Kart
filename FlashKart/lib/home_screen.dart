import 'package:flutter/material.dart';
import 'loading_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

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
            Padding(padding: EdgeInsets.all(15),
                child: CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: Colors.redAccent,
                  child: Icon(Icons.person_2_rounded,color: Colors.white,size: 50,),
                )),
            const Text(
              'Welcome User!! '
                  'Thank You For Joining Us Today',
            ),
            Padding(padding: EdgeInsets.all(5),),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const loading_screen()),
                );
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}