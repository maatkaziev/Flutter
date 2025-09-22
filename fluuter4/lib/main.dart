import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  get height => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(9),
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Center(child: Text('Class A')),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
