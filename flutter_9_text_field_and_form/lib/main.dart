import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerNumber = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            controller: _controllerName,
            labelText: 'Enter your name',
            hintText: 'you should to write your name',
          ),
          const SizedBox(height: 20),

          CustomTextField(
            controller: _controllerNumber,
            labelText: 'Enter your number',
            hintText: 'you should to write your number',
          ),
          const SizedBox(height: 20),

          CustomTextField(
            controller: _controllerPassword,
            labelText: 'Enter your password',
            hintText: 'you should to write your password',
          ),

          const SizedBox(height: 30),

          ElevatedButton(
            onPressed: () {
              setState(() {
                _text =
                    'Name: ${_controllerName.text}, Number: ${_controllerNumber.text}, Password: ${_controllerPassword.text}';
              });
            },
            child: Text('click me '),
          ),
          SizedBox(height: 30),
          Text(_text),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required TextEditingController controller,
    required this.labelText,
    required this.hintText,
  }) : _controller = controller;

  final TextEditingController _controller;
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: labelText,
        hintText: hintText,
        labelStyle: TextStyle(color: Colors.grey),
        hintStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
