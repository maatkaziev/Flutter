import 'package:flutter/material.dart';
import 'package:flutter7/Custom_Container.dart';
import 'package:flutter7/Custom_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(text: "A", color: Colors.blue),
              SizedBox(width: 20),
              CustomContainer(text: "B", color: Colors.orangeAccent),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(text: "C", color: Colors.purple),
              SizedBox(width: 20),
             CustomContainer(text: "D", color: Colors.green),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(text: "E", color: Colors.yellow),
              SizedBox(width: 20),
              CustomContainer(text: "F", color: Colors.grey),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(text: "G", color: Colors.blueGrey),
              SizedBox(width: 20),
              CustomContainer(text: "H", color: Colors.greenAccent),
            ],
          ),
          SizedBox(height: 20), 
          Row( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children:[
            CustomText(text: 'Maatkaziev', color: Colors.black26),
          ],
          ),
        ],
      ),
    );
  }
}