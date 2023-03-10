import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/pages/circle_page.dart';
import 'package:flutter_custom_paint/pages/linepage.dart';
import 'package:flutter_custom_paint/pages/rectangle_page.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List<Widget> pages = [
    const Linepage(),
    const RectanglePage(),
    const CirclePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Custom Paint"),
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.line_axis,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_box_outline_blank,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle,
              ),
              label: ''),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
