import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "ABC"),
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(30),
      children: [
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerLeft,
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("assets/images/david.jpg")

          ),
        ),

        const SizedBox(height: 30),

        CustomText(text: 'What is Lorem Ipsum?', color: Colors.blueGrey),
        const SizedBox(height: 20),
        LongText(
          longText:  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like 
Aldus PageMaker including versions of Lorem Ipsum.''',
        ),
      ],
    );
  }
}

class LongText extends StatelessWidget {
  const LongText({super.key, required this.longText});
  final String longText;
  @override
  Widget build(BuildContext context) {
    return Text(
      longText,
      style: TextStyle(fontSize: 17, color: Colors.cyan),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(30),
      children: const [
        SizedBox(height: 20),
        CustomText(text: 'why do we use it ?', color: Colors.blue),
        SizedBox(height: 20),
        LongText(
          longText:
              '''It is a long established fact that a reader will be distracted by the readable content of a page 
when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal 
distribution of letters, as opposed to using 'Content here, content here', making it look like 
readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as 
their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. 
Various versions have evolved over the years, sometimes by accident, sometimes on purpose 
injected humour and the like.''',
        ),
        SizedBox(height: 20),
        CustomText(text: 'Where can I get som e?', color: Colors.lightGreen),
        SizedBox(height: 20),
        LongText(
          longText:
              '''There are many variations of passages of Lorem Ipsum available,
but the majority have suffered alteration in some form, by injected humour,
or randomised words which don't look even slightly believable.
If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't
anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet
tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures,
to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free
from repetition, injected humour, or non-characteristic words etc.''',
        ),
      ],
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          children: const [
            SquareBox(label: "A", color: Colors.red),
            SquareBox(label: "B", color: Colors.green),
            SquareBox(label: "C", color: Colors.blue),
            SquareBox(label: "D", color: Colors.orange),
            SquareBox(label: "E", color: Colors.purple),
            SquareBox(label: "F", color: Colors.teal),
            SquareBox(label: "G", color: Colors.brown),
            SquareBox(label: "H", color: Colors.grey),
            SquareBox(label: "I", color: Colors.white),
            SquareBox(label: "J", color: Colors.amber),
            SquareBox(label: "K", color: Colors.indigoAccent),
            SquareBox(label: "L", color: Colors.tealAccent),
          ],
        ),
      ),
    );
  }
}

class SquareBox extends StatelessWidget {
  const SquareBox({super.key, required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: color,

        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          label,

          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
