import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              maxLines: 5,
              minLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Введите текст',
              ),
            ),
            const SizedBox(height: 70),
            TextField(
              maxLines: 5,
              minLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Введите текст',
              ),
            ),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Сохранить текст'),
            ),
          ],
        ),
      ),
    );
  }
}