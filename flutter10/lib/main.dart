

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerFullName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerRepeatThePassword = TextEditingController();
  String _text = "";

  @override
  void dispose() {
    _controllerFullName.dispose();
    _controllerEmail.dispose();
    _controllerPassword.dispose();
    _controllerRepeatThePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey, 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                const Text(
                  "Регистрация",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 90),
                CustomTextFormField(
                  controller: _controllerFullName,
                  labelText: 'ФИО',
                  hintText: 'Введите ФИО',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите ваше ФИО';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  controller: _controllerEmail,
                  labelText: 'Email',
                  hintText: 'Введите эл. адрес',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите адрес электронной почты';
                    }
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return 'Пожалуйста, введите корректный email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  controller: _controllerPassword,
                  labelText: 'Пароль',
                  hintText: 'Введите пароль',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите пароль';
                    }
                    if (value.length < 8) {
                      return 'Пароль должен содержать не менее 8 символов';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  controller: _controllerRepeatThePassword,
                  labelText: 'Повторите пароль',
                  hintText: 'Повторите пароль',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, повторите пароль';
                    }
                          if (value.length < 8) {
                      return 'Пароль должен содержать не менее 8 символов';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _text =
                            'ФИО: ${_controllerFullName.text}\nEmail: ${_controllerEmail.text}\nПароль: ${_controllerPassword.text}';
                      });
                    }
                  },
                  child: const Text("Регистрироваться"),
                ),
                const SizedBox(height: 20),
                Text(
                  _text,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
    this.validator,
  });

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(26)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(color: Colors.grey),
        hintStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}