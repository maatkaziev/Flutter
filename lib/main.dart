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
  int number = 0;

  void incrementCounter() {
    setState(() {
      number++;
    });
  }

  void decrementCounter() {
    setState(() {
      number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Conter App",
          style: TextStyle(color: Colors.green, fontSize: 28),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Counter:$number'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: decrementCounter,
                icon: Icon(
                  Icons.remove,
                  size: 40,
                  color: const Color.fromARGB(255, 23, 25, 26),
                ),
              ),
              IconButton(
                onPressed: incrementCounter,
                icon: Icon(
                  Icons.add,
                  size: 40,
                  color: const Color.fromARGB(255, 26, 28, 29),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
