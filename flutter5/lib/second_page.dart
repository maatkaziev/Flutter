import 'package:flutter/material.dart';
import "package:flutter5/third_page.dart";

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent, width: 3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?semt=ais_hybrid&w=740&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Имя",
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            TextField(
              controller: surnameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Фамилия",
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Телефон",
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: addressController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Адрес",
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage()),
                  );

                  // Собираем все значения
                  //                   String values = '''
                  // Имя: ${nameController.text}
                  // Фамилия: ${surnameController.text}
                  // Email: ${emailController.text}
                  // Телефон: ${phoneController.text}
                  // Адрес: ${addressController.text}
                  // ''';

                  // Показываем диалог
                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return AlertDialog(
                  //       title: const Text("Введённые данные"),
                  //       content: Text(values),
                  //       actions: [
                  //         TextButton(
                  //           onPressed: () => Navigator.pop(context),
                  //           child: const Text("OK"),
                  //         )
                  //       ],
                  //     );
                  //   },
                  // );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blueAccent,
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
