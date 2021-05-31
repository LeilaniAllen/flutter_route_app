import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/secondPage': (context) => SecondPage(),
        '/thirdPage': (context) => ThirdPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Page",
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    '/secondPage'
                );
              },
              child: Text("Go to Next Page"),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightGreen)),
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Page",
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(),
                  ),
                );
              },
              child: Text("Go to Next Page"),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.orangeAccent)),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Third Page",
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go to First Page"),
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.indigo)),
            )
          ],
        ),
      ),
    );
  }
}
